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

$buildDefinitionToFind =  "[O][Master][Pr]"

function ResubmitBadBuilds {
    param (
        # Parameter help description
        [Parameter(Mandatory = $true)]
        [string]$BuildDefinitionName,
        # Parameter help description
        [Parameter(Mandatory = $true)]
        [string]$BadCommitId        
    )
    
    $foundDefinitions = Get-Definitions -NamePattern $BuildDefinitionName
    if($foundDefinitions.Count -eq 0) {
        throw "Cannot find $buildDefinitionToFind build definition"
    }
}

