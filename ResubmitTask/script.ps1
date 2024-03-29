[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string] $apiKey,
    [Parameter(Mandatory = $true)]
    [string] $orgName,
    [Parameter(Mandatory = $true)]
    [string] $projectID,
    [Parameter(Mandatory = $true)]
    [string] $buildDefinitionName,
    [Parameter(Mandatory = $true)]
    [string] $repositoryId,
    [Parameter(Mandatory = $true)]
    [string] $badCommit,
    [Parameter(Mandatory = $true)]
    [string] $fixCommit,
    [string] $sourceCommit = ""

)

#region API variables

$apiVersion = "5.1"
$isWriteHostCalledURLs = $true
#endregion

$commitsTree = @{}

$buildedPullRequests = New-Object System.Collections.Generic.HashSet[string]

# stop program on any error
$ErrorActionPreference = "Stop"

# # init variables
# $orgName = "v-mazayt"
# $projectID = "    "
# $apiVersion = "5.1"
# $repositoryId = "c5395373-cade-425c-8c47-953aaad51f87"
# $apiKey = "taenxgjsz4tkzahzibunsk3xbb7evy7kvh6crt2uytsnmzi3lsnq"

#endregion

#region API

# Create HTTP Request with parameters to Azure Devops API
Function Make-HTTP-Request-To-Azure-DevOps-API {
    param (
        [Parameter(Mandatory=$true)]
        [string]$Route,
        [Parameter(Mandatory=$true)]
        [string]$Method,
        [Parameter(Mandatory=$false)]
        [hashtable]$QueryParameters,
        [Parameter(Mandatory=$false)]
        [object]$RequestBody,
        [Parameter(Mandatory=$false)]
        [int]$PreviewVersion
    )
    
    $uri = "https://dev.azure.com/$orgName/$projectID/_apis/$Route"+"?api-version=$apiVersion" 
    if($PreviewVersion -ne $null -and $PreviewVersion -ne "") {
        $uri += "-preview." + $PreviewVersion
    }
    # adding query parameters to URI
    Foreach($key in $QueryParameters.Keys)
    {
        $value = $QueryParameters.Item($key)
        $uri += "&$key=$value"
    }

    if($isWriteHostCalledURLs) {
        Write-Host "URL called $uri by method $Method"
    }
    # serialize json body
    $jsonBody = ConvertTo-Json -InputObject $RequestBody -Depth 100
    $resp = Invoke-RestMethod -Uri $uri -Headers (Create-BasicAuthHeader 'Azure Barabara' $apiKey) -Method $Method -Body $jsonBody -ContentType "application/json"
    #Write-Host $resp.value
    return $resp
}

# Creates Valid Authorization Header for function calling side
Function Create-BasicAuthHeader {
    Param(
      [Parameter(Mandatory=$true)]
      [string]$Name,
      [Parameter(Mandatory=$true)]
      [string]$PAT
    )
    $Auth = '{0}:{1}' -f $Name, $PAT
    $Auth = [System.Text.Encoding]::UTF8.GetBytes($Auth)
    $Auth = [System.Convert]::ToBase64String($Auth)
    $Header = @{Authorization=("Basic {0}" -f $Auth)} 
    return $Header
}

function Get-Builds {
    Param(
        [Parameter(Mandatory=$false)]
        [int[]]$DefinitionIDs = @(),
        [Parameter(Mandatory=$false)]
        [string]$BranchName,
        [Parameter(Mandatory=$false)] [ValidateSet("succeeded", "partiallySucceeded", "failed", "canceled", "all")]
        [string]$ResultFilter,
        [Parameter(Mandatory=$false)]
        [string]$StatusFilter,
        [Parameter(Mandatory=$false)] [ValidateSet("finishTimeDescending" , "finishTimeAscending", "queueTimeAscending", "queueTimeDescending", "startTimeAscending", "startTimeDescending")]
        [string]$QueryOrder,
        [Parameter(Mandatory=$false)]
        [string[]]$TagFilters = @(),
        [Parameter(Mandatory=$false)] [ValidateSet("manual", "individualCI", "batchedCI", "schedule", "userCreated", "validateShelveset", "checkInShelveset", "triggered", "all", "pullRequest")]
        [string]$ReasonFilter = "all",
        [Parameter(Mandatory=$false)]
        [datetime]$minTime,
        [Parameter(Mandatory=$false)]
        [datetime]$maxTime,
        [int]$top
    )
    $route = "build/builds"
    $queryParameters = @{
        "definitions" = [string]::Join(",", $DefinitionIDs);
        "branchName" = $BranchName;
        "resultFilter" = $ResultFilter;
        "tagFilters" = [string]::Join(",", $TagFilters);
        "reasonFilter" = $ReasonFilter;
    }
    if(![string]::IsNullOrEmpty($QueryOrder))
    {
        $queryParameters["queryOrder"] =  $QueryOrder
    }
    if($top -gt 0) {
        $queryParameters['$top'] = $top
    } 
    if($minTime -ne $null) {
        $queryParameters["minTime"] = $minTime.ToString("yyyy-MM-dd")
    } 
    if($maxTime -ne $null) {
        $queryParameters["maxTime"] = $maxTime.ToString("yyyy-MM-dd")
    }
    if($StatusFilter -ne $null) {
        $queryParameters["statusFilter"] = $StatusFilter.ToString();
    }
    $response = Make-HTTP-Request-To-Azure-DevOps-API -Route $route -Method GET -QueryParameters $queryParameters
    return $response
}

# Get Branch by name
function Get-Commit {
    Param(
        [Parameter(Mandatory=$true)]
        [string]$CommitId
    )
    $route = "git/repositories/$repositoryId/commits/$CommitId"
    $resp =  Make-HTTP-Request-To-Azure-DevOps-API -Route $route -Method GET
    return $resp
}

# Queue build
function Queue-Build {
    Param(
        [Parameter(Mandatory=$true)]
        [object]$Build
    )
    $route = "build/builds"
    $resp =  Make-HTTP-Request-To-Azure-DevOps-API -Route $route -RequestBody $Build -Method POST
    return $resp

}

# Cancel build
function Cancel-Build {
    Param(
        [Parameter(Mandatory=$true)]
        [int]$BuildId
    )
    $body = @{status = "Cancelling"}
    $route = "build/builds/$BuildId"
    $resp =  Make-HTTP-Request-To-Azure-DevOps-API -Route $route -RequestBody $body -Method Patch
    return $resp
}

# convert to branch to necessary format
function Convert-Branch-Name {
    param (
        [Parameter(Mandatory=$true)]
        [string]$BranchName
    )
    return "refs/heads/" + $BranchName
}

function Get-Definitions {
    Param (
        # Parameter help description
        [Parameter(Mandatory = $false)]
        [string]$NamePattern
    )
    $route = "build/definitions"
    $queryParams = @{includeAllProperties = $true;  name = $NamePattern}
    $resp =  Make-HTTP-Request-To-Azure-DevOps-API -Route $route -Method GET -QueryParameters $queryParams 
    return $resp.value
}

function Get-Policy-Evaluations {
    Param (
        # Parameter help description
        [Parameter(Mandatory = $true)]
        [int]$PullRequestId
    )
    $queryParams = @{artifactId = "vstfs:///CodeReview/CodeReviewId/$projectID/$PullRequestId"}
    $route = "policy/evaluations"
    $resp =  Make-HTTP-Request-To-Azure-DevOps-API -Route $route -Method GET -QueryParameters $queryParams -PreviewVersion 1
    return $resp
}
#endregion


#region BuildResubmitTask
$ignorePolicyIds = New-Object System.Collections.Generic.HashSet[string]
# fa4e907d-c16b-4a4c-9dfa-4916e5d171ab - is a merge type policy, which not block policy validation
$ignorePolicyIds.Add("fa4e907d-c16b-4a4c-9dfa-4916e5d171ab") | Out-Null

function Build-Commits-Tree {
    param (
        [Parameter(Mandatory = $true)]
        [string]$CommitId,
        [Parameter(Mandatory = $true)]
        [System.Collections.Generic.HashSet[string]]$BadCommitParents,
        [Parameter(Mandatory = $true)]
        [string]$BadCommit,   
        [Parameter(Mandatory = $true)]
        [string]$FixCommit   
    )

    if(!$commitsTree.ContainsKey($CommitId)) {
        $tryCount = 2;
        $commit = $null
        while($tryCount -gt 0) {
            try {
                $commit = Get-Commit -CommitId $CommitId
                break
            } catch {
                if($tryCount == 1) {
                    throw $_.Exception
                }
            }
            $tryCount--
        }
        $commitsTree[$CommitId] = @{}
        $commitsTree[$CommitId]["parents"] = $commit.parents    
        $commitsTree[$CommitId]["hasBadCommit"] = $false
        $commitsTree[$CommitId]["hasFixCommit"] = $false
        if($CommitId -eq $FixCommit) {
            $commitsTree[$CommitId]["hasFixCommit"] = $true
        }
        if($CommitId -eq $BadCommit) {
            $commitsTree[$CommitId]["hasBadCommit"] = $true
            return
        }
        if($badCommitParents.Contains($CommitId)) {
            return
        }
        if($commit.parents.Count -gt 0) {
            foreach($parent in $commit.parents) {
                Build-Commits-Tree -CommitId $parent -BadCommitParents $BadCommitParents -BadCommit $BadCommit -FixCommit $FixCommit
                if(!$commitsTree[$CommitId]["hasFixCommit"]) {
                    $commitsTree[$CommitId]["hasFixCommit"] = $commitsTree[$parent]["hasFixCommit"] 
                }
                if(!$commitsTree[$CommitId]["hasBadCommit"]) {
                    $commitsTree[$CommitId]["hasBadCommit"] = $commitsTree[$parent]["hasBadCommit"] 
                }
            }
        }
    } else {
        return $commitsTree[$CommitId]["hasBadCommit"]
    }
}

function IsPullRequestValid {
    param (
        [Parameter(Mandatory = $true)]
        [int]$PullRequestId  
    )
    $tryCount = 2;
    while($tryCount -gt 0) {
        try {
            $evaluations = Get-Policy-Evaluations -PullRequestId $PullRequestId
            break;
        } catch {
            if($tryCount == 1) {
                throw $_.Exception
            }
        }
        $tryCount--
    }
    foreach($evaluation in $evaluations.value) {
        # if the policy setting not active or it's in ignore list
        if(!$evaluation.configuration.isEnabled -or $evaluation.configuration.isDeleted -or !$evaluation.configuration.isBlocking -or !$ignorePolicyIds.Contains($evaluation.configuration.type.id)) {
            continue
        }
        if($evaluation.status -ne "approved") {
            return $false
        }

    }
    return $true
}

function ResubmitBuild {
    param (
        [Parameter(Mandatory = $true)]
        [object]$build,
        [Parameter(Mandatory = $true)]
        [string]$FixCommitId,
        [Parameter(Mandatory = $true)]
        [string]$BadCommitId,
        [Parameter(Mandatory = $true)]
        [System.Collections.Generic.HashSet[string]]$BadCommitParents
    )
    $parameters = ConvertFrom-Json $build.parameters
    $build.id = -1
    $build.buildNumber = $null
    $build.orchestrationPlan = $null
    $build.sourceBranch = $parameters."system.pullRequest.targetBranch"
    $build.sourceVersion = $SourceCommit
    $buildedPullRequests.Add($build.triggerInfo."pr.number")
    $tryCount = 2;
    
    while($tryCount -gt 0) 
    {
        try 
        { 
            (Queue-Build -Build $build) | Out-Null
            break
        } 
        catch 
        {
            if($tryCount == 1)
            {
                throw $_.Exception
            }
        }
        $tryCount--
    }
    Write-Host "Build $($build.id) are successfully resubmitted"
}

function ResubmitBadBuilds {
    param (
        # Parameter help description
        [Parameter(Mandatory = $true)]
        [string]$BuildDefinitionName,
        # Parameter help description
        [Parameter(Mandatory = $true)]
        [string]$BadCommitId,
        [Parameter(Mandatory = $false)]
        [string]$SourceCommit = "",
        [Parameter(Mandatory = $true)]
        [string]$FixCommitId
    )
    $foundDefinitions = Get-Definitions -NamePattern $BuildDefinitionName
    if($foundDefinitions.Count -eq 0) {
        throw "Cannot find $buildDefinitionToFind build definition"
    }
    Write-Host "Defenition $BuildDefinitionName is found"
    $badcommit = Get-Commit -CommitId $BadCommitId
    Write-Host "Bad commit $BadCommitId is found"
    $badCommitParents = New-Object System.Collections.Generic.HashSet[string]
    foreach($parent in $badCommit.parents) {
        $badCommitParents.Add($parent) | Out-Null
    }
    $definition = $foundDefinitions[0]
    $currentTime = Get-Date
    Write-Host "Fetching builds...."
    $inProgressAndNotStartedBuilds = Get-Builds -StatusFilter "inProgress,NotStarted" -DefinitionIDs @($definition.id) -ReasonFilter "pullRequest" #-QueryOrder queueTimeDescending
    $failedbuilds = Get-Builds -ResultFilter Failed -StatusFilter completed -DefinitionIDs @($definition.id) -ReasonFilter "pullRequest" -minTime $currentTime.Date.AddDays(-2) #-QueryOrder finishTimeDescending
    
    $builds = $inProgressAndNotStartedBuilds.value + $failedbuilds.value

    Write-Host "$($builds.value.Count) builds are fetched"
    
    # iterate build from oldest builds
    for($i = $builds.Count - 1; $i -ge 0; $i--)
    {
        $build = $builds[$i]         
        $isPullRequestValid = (IsPullRequestValid -PullRequestId $build.triggerInfo."pr.number") 
        Build-Commits-Tree -CommitId $build.sourceVersion -BadCommit $BadCommitId -BadCommitParents $badCommitParents -FixCommit $FixCommitId

        if($isPullRequestValid -and $commitsTree[$build.sourceVersion]["hasBadCommit"] -and  !$commitsTree[$build.sourceVersion]["hasFixCommit"]) 
        {
            Write-Host "Processing the Build $($build.id) with status $($build.status) and result $($build.result)"
            if($build.status -ne "completed")
            {
                Write-Host "Canceling build $($build.id)"
                Cancel-Build -BuildId $build.id | Out-Null
            }
            $sameBuildProcessed = $buildedPullRequests.Contains($build.triggerInfo."pr.number")
            if($sameBuildProcessed) 
            {
                Write-Host "The same Build as $($build.id) build yet built, no need to rebuild this build"
                continue
            }
            ResubmitBuild -build $build -FixCommitId $FixCommitId -BadCommitId $BadCommitId -BadCommitParents $badCommitParents
        }
    }
}
#endregion

ResubmitBadBuilds -BuildDefinitionName $buildDefinitionName -BadCommitId  $badCommit -SourceCommit $sourceCommit -FixCommitId $fixCommit

