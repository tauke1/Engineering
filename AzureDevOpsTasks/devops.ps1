#Get function from api folder files.
$API  = @( Get-ChildItem -Path api/*.ps1 -ErrorAction SilentlyContinue )

#Dot source the files
Foreach($import in @($API))
{
    Try
    {
        . $import.fullname
    }
    Catch
    {
        Write-Error -Message "Failed to import function $($import.fullname): $_"
    }
}

# stop program on any error
$ErrorActionPreference = "Stop"

$currentDate = Get-Date

$threeDaysOldDefinitionPostfix = $currentDate.AddDays(-3).ToString("MM.dd")
Write-Host "Searching 3 days old definitions by pattern name *[$threeDaysOldDefinitionPostfix]*"

$threeDayOldDefinitions = Get-Definitions -NamePattern "*[$threeDaysOldDefinitionPostfix]*"
foreach($threeDayOldDefinition in $threeDayOldDefinitions) {
    Delete-Old-Builds-From-Definition -DefinitionID $threeDayOldDefinition.id
} 
Write-Host "Builds deleted except latest success build for definitions by pattern name *[$threeDaysOldDefinitionPostfix]*"

# format - currentMonth-currentDay with leading zeros
$postfix = $currentDate.ToString("MM.dd")
$newBranchName = "release-$postfix"
Write-Host "creating branch $newBranchName...."
# create policy settings to the new branch
[void](Create-New-Branch-From-Source-Branch -SourceBranchName master -NewBranchName $newBranchName)
Write-Host "branch $newBranchName created from master"
[void](Set-Required-Reviewer-Count-Policy-Setting -RefName $newBranchName -MinReviewerCount 1)
Write-Host "Policy setting of minimum count of reviewers created"
[void](Set-Merge-Strategy-Policy-Setting -RefName $newBranchName -AllowSquash $true)
Write-Host "Policy setting of merge rules created"

# get necessary definitions
$originDefinitions = @("[P][Master][CI]", "[P][Master][PR]", "[P][Master][Validation]")


$definitions = Get-Necessary-Definitions -NecessaryBuildDefinitionNames $originDefinitions
foreach ($definition in $definitions) {
    $definition.name = $definition.name -replace "\[Master\]", "[Master][$postfix]"
    Write-Host "Creating definition $($definition.name)"
    # change values of some properties to its default value
    $definition.revision = 1
    $definition._links = $null
    $definition.url = $null 
    $definition.id = -1
    $definition.path = "/$postfix"
    $definition.repository.defaultBranch = Convert-Branch-Name -BranchName $newBranchName
    $createdDefinition = Create-Definition -Data $definition
    Write-Host "Definition $($definition.name) created"
    [void](Set-Build-Validation-Policy-Settings -RefName $newBranchName -BuildDefinitionId $createdDefinition.id)
    Write-Host "Policy of build validation for branch $newBranchName related to $($definition.name) created"
}

Write-Host "Success!"  
