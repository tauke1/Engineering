#region API variables
$orgName = "tauke1"
$projectID = "d0b80027-2250-45b3-bda4-d9b77d41ab30"
$apiVersion = "5.1"
$repositoryId = "e6d2f456-3afc-43e5-ac97-9d571e7fa57d"
$apiKey = "xe6twlovporcyjzzmuxrooxzqmxq32gw4s36tkfjwtb4jipovz5a"
$isWriteHostCalledURLs = $true
#endregion

$badCommit = "e8d1fedefd1d717eac11e0e1c9d927875cd60bc5"
# empty value means that we should take last commit of sourceBrancName
$sourceCommit = ""
$commitsTree = @{}
$buildDefinitionId = "[P][Master][CI]"
$fixCommit = "3123123"
# stop program on any error
$ErrorActionPreference = "Stop"

# # init variables
# $orgName = "v-mazayt"
# $projectID = "    "
# $apiVersion = "5.1"
# $repositoryId = "c5395373-cade-425c-8c47-953aaad51f87"
# $apiKey = "taenxgjsz4tkzahzibunsk3xbb7evy7kvh6crt2uytsnmzi3lsnq"

#region Enums
Add-Type -TypeDefinition @"
   public enum BuildStatus
   {
        // All status.
        all,
        // The build is cancelling.
        cancelling,
        // The build has completed
        completed,
        // The build is currently in progress.
        inProgress,
        // No status.
        none,
        // The build has not yet started.
        notStarted,
        // The build is inactive in the queue.
        postponed
   }
"@

Add-Type -TypeDefinition @"
   public enum BuildResult
   {
        // All status
        all,
        // The build was canceled before starting
        canceled,
        // The build completed unsuccessfully
        failed,
        // No result
        none,
        // The build completed compilation successfully but had other errors
        partiallySucceeded,
        // The build completed successfully
        succeeded
   }
"@

Add-Type -TypeDefinition @"
   public enum BuildQueryOrder
   {
        // Order by finish time descending
        finishTimeDescending,
        // Order by finish time ascending
        finishTimeAscending,
        // Order by queue time ascending
        queueTimeAscending,
        // Order by queue time descending
        queueTimeDescending,
        // Order by start time ascending
        startTimeAscending,
        // Order by start time descending
        startTimeDescending
   }
"@

Add-Type -TypeDefinition @"
   public enum BuildReason
   {
        // All reasons
        all,
        // The build was started for the trigger TriggerType.BatchedContinuousIntegration
        batchedCI,
        // The build was started when another build completed
        buildCompletion,
        // The build was started for the trigger ContinuousIntegrationType.Gated
        checkInShelveset,
        // The build was started for the trigger TriggerType.ContinuousIntegration
        individualCI,
        // The build was started manually
        manual,
        // No reason. This value should not be used
        none,
        // The build was started by a pull request. Added in resource version 3
        pullRequest,
        // The build was started for the trigger TriggerType.Schedule
        schedule,
        // The build was triggered for retention policy purposes
        triggered,
        // The build was created by a user
        userCreated,
        // The build was started manually for private validation
        validateShelveset
   }
"@
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
        [Parameter(Mandatory=$false)]
        [BuildResult]$ResultFilter = [BuildResult]::all,
        [Parameter(Mandatory=$false)]
        [Nullable[BuildStatus]]$StatusFilter,
        [Parameter(Mandatory=$false)]
        [BuildQueryOrder]$QueryOrder = [BuildQueryOrder]::queueTimeDescending,
        [Parameter(Mandatory=$false)]
        [string[]]$TagFilters = @(),
        [Parameter(Mandatory=$false)]
        [BuildReason]$ReasonFilter = [BuildReason]::all,
        [Parameter(Mandatory=$false)]
        [datetime]$minTime,
        [Parameter(Mandatory=$false)]
        [datetime]$maxTime
    )
    $route = "build/builds"
    $queryParameters = @{
        "definitions" = [string]::Join(",", $DefinitionIDs);
        "queryOrder" = $QueryOrder.ToString();
        "branchName" = $BranchName;
        "resultFilter" = $ResultFilter;
        "tagFilters" = [string]::Join(",", $TagFilters);
        "reasonFilter" = $ReasonFilter.ToString()
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
[void]$ignorePolicyIds.Add("fa4e907d-c16b-4a4c-9dfa-4916e5d171ab")

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
            [void]$tryCount--
        }
        $commitsTree[$CommitId] = @{}
        $commitsTree[$CommitId]["parents"] = $commit.parents    
        $commitsTree[$CommitId]["hasBadCommit"] = $false
        $commitsTree[$CommitId]["hasFixCommit"] = $false
        if($CommitId -eq $FixCommit) {
            $res = $commitsTree[$CommitId]["hasFixCommit"] = $true
        }
        if($CommitId -eq $BadCommit) {
            $res = $commitsTree[$CommitId]["hasBadCommit"] = $true
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
        [void]$tryCount--
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
    if($true -or $build.result -ne "succeeded" -and $build.result -ne "canceled") {
        Write-Host "Processing the Build $($build.id)"
        $sameBuildProcessed = $buildedPullRequests.Contains($build.triggerInfo."pr.number")
        if($sameBuildProcessed) {
            Write-Host "The same as Build $($build.id) yet built, no need to build this build"
            continue
        }
        $isPullRequestValid = (IsPullRequestValid -PullRequestId $build.triggerInfo."pr.number") 
        Build-Commits-Tree -CommitId $build.sourceVersion -BadCommit $BadCommitId -BadCommitParents $badCommitParents -FixCommit $FixCommitId
        if($isPullRequestValid -and $commitsTree[$build.sourceVersion]["hasBadCommit"] -and  !$commitsTree[$build.sourceVersion]["hasFixCommit"]) {
            $parameters = ConvertFrom-Json $build.parameters
            $build.id = -1
            $build.buildNumber = $null
            $build.orchestrationPlan = $null
            $build.sourceBranch = $parameters."system.pullRequest.targetBranch"
            $build.sourceVersion = $SourceCommit
            $buildedPullRequests.Add($build.triggerInfo."pr.number")
            $tryCount = 2;
            while($tryCount -gt 0) {
                try{ 
                    [void](Queue-Build -Build $build)
                    break
                } catch {
                    if($tryCount == 1) {
                        throw $_.Exception
                    }
                }
               [void]$tryCount--
            }
            Write-Host "Build $($build.id) are successfully resubmitted"
        } else {
            $buildedPullRequests.Add($build.triggerInfo."pr.number")
            Write-Host "Build $($build.id) are not valid to our conditions"
        }
    } 
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
    $buildedPullRequests = New-Object System.Collections.Generic.HashSet[int]
    $foundDefinitions = Get-Definitions -NamePattern $BuildDefinitionName
    if($foundDefinitions.Count -eq 0) {
        throw "Cannot find $buildDefinitionToFind build definition"
    }
    Write-Host "Defenition $BuildDefinitionName is found"
    $badcommit = Get-Commit -CommitId $BadCommitId
    Write-Host "Bad commit $BadCommitId is found"
    $badCommitParents = New-Object System.Collections.Generic.HashSet[string]
    foreach($parent in $badCommit.parents) {
        [void]$badCommitParents.Add($parent)
    }
    $definition = $foundDefinitions[0]
    $currentTime = Get-Date
    Write-Host "Fetching builds...."
    $builds = Get-Builds -DefinitionIDs @($definition.id) -ReasonFilter "pullRequest" -minTime $currentTime.Date.AddDays(-2) -QueryOrder queueTimeDescending
    Write-Host "$($builds.value.Count) builds are fetched"
    foreach($build in $builds.value) {
        ResubmitBuild -build $build -FixCommitId $FixCommitId -BadCommitId $BadCommitId -BadCommitParents $badCommitParents
    }
}
#endregion

ResubmitBadBuilds -BuildDefinitionName $buildDefinitionId -BadCommitId  $badCommit -SourceCommit $sourceCommit -FixCommitId $fixCommit

