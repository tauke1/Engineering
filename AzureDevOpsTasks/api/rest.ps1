# init variables
$orgName = "tauke1"
$projectID = "d0b80027-2250-45b3-bda4-d9b77d41ab30"
$apiVersion = "5.1"
$repositoryId = "e6d2f456-3afc-43e5-ac97-9d571e7fa57d"
$oldObjectId = "0000000000000000000000000000000000000000"
$apiKey = "xe6twlovporcyjzzmuxrooxzqmxq32gw4s36tkfjwtb4jipovz5a"


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
        [object]$RequestBody
    )
    
    $uri = "https://dev.azure.com/$orgName/$projectID/_apis/$Route"+"?api-version=$apiVersion" 
    
    # adding query parameters to URI
    Foreach($key in $QueryParameters.Keys)
    {
        $value = $QueryParameters.Item($key)
        $uri += "&$key=$value"
    }

    Write-Host "URL called $uri by method $Method"

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

# Get Branch by name
Function Get-Branch {
    Param(
        [Parameter(Mandatory=$true)]
        [string]$BranchName
    )
    $queryParams = @{filter = "heads/$BranchName"}
    $route = "git/repositories/ $repositoryId/refs"
    $resp =  Make-HTTP-Request-To-Azure-DevOps-API -Route $route -Method GET -QueryParameters $queryParams 
    if($resp.count -gt 0) {
        return $resp.value[0]
    } 
    else {
        throw "Branch $BranchName not found!"
    }

}

# convert to branch to necessary format
function Convert-Branch-Name {
    param (
        [Parameter(Mandatory=$true)]
        [string]$BranchName
    )
    return "refs/heads/" + $BranchName
}

# Creates new branch by fetching existing branch
Function Create-New-Branch-From-Source-Branch {
    Param(
        [Parameter(Mandatory=$true)]
        [string]$SourceBranchName,
        [Parameter(Mandatory=$true)]
        [string]$NewBranchName
    )
    $TargetBranchName = Convert-Branch-Name $NewBranchName
    $SourceBranchName = Convert-Branch-Name $SourceBranchName
    
    # find source branch in Azure Devops API
    $parentBranch = Get-Branch -BranchName master
    
    # form body of http Request Body
    $body = @(@{
        name = $TargetBranchName;
        oldObjectId = $oldObjectId;
        newObjectId = $parentBranch.objectId
    })
    $route = "git/repositories/$repositoryId/refs"
    $resp = Make-HTTP-Request-To-Azure-DevOps-API -Route $route -RequestBody $body -Method POST 
    if($resp.Value.success) {
        return $true
    } else {
        $errorMessage = "Cant create branch named $NewBranchName" 
        throw $errorMessage
    }
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

# Get Necessary Build Definistions of current project and user
Function Get-Necessary-Definitions {
    Param (
        # Parameter help description
        [Parameter(Mandatory = $true)]
        [string[]]$NecessaryBuildDefinitionNames
    )
    $necessaryBuildDenifitionNamesHashSet = New-Object System.Collections.Generic.HashSet[string]
    foreach($defName in $NecessaryBuildDefinitionNames) {
        [void]$necessaryBuildDenifitionNamesHashSet.Add($defName)
    }
    $resp = Get-Definitions
    if($resp.Length -eq 0) {
        throw "There is no one build definitions!"
    }
    $result = @()
    foreach($definition in $resp) {
        # if definition is [P][Master][CI] or [P][Master][PR] or [P][Master][Validation]w
        if($necessaryBuildDenifitionNamesHashSet.Contains($definition.name)) {
            $result+= $definition
        }
    }
    return $result
}

# Create Build Definition
Function Create-Definition {
    Param(
        [Parameter(Mandatory=$true)]
        [object]$Data
    )
    $route = "build/definitions"
    $response = Make-HTTP-Request-To-Azure-DevOps-API -Route $route -Method POST -RequestBody $Data
    return $response
}

# delete build definition
function Delete-Definition {
    Param(
        [Parameter(Mandatory=$true)]
        [int]$DefinitionID
    )
    $route = "build/definitions/$DefinitionID"
    $response = Make-HTTP-Request-To-Azure-DevOps-API -Route $route -Method DELETE -RequestBody
    return $response
}

# delete build
function Delete-Build {
    Param(
        [Parameter(Mandatory=$false)]
        [int]$BuildID
    )
    $route = "build/builds/$BuildID"
    $response = Make-HTTP-Request-To-Azure-DevOps-API -Route $route -Method DELETE
    return $response
}

# get builds by some parameters
function Get-Builds {
    Param(
        [Parameter(Mandatory=$false)]
        [int[]]$DefinitionIDs = @(),
        [Parameter(Mandatory=$false)]
        [string]$BranchName,
        [Parameter(Mandatory=$false)]
        [BuildResult]$ResultFilter = [BuildResult]::all,
        [Parameter(Mandatory=$false)]
        [BuildStatus]$StatusFilter = [BuildStatus]::all,
        [Parameter(Mandatory=$false)]
        [BuildQueryOrder]$QueryOrder = [BuildQueryOrder]::startTimeAscending,
        [Parameter(Mandatory=$false)]
        [string[]]$TagFilters = @(),
        [Parameter(Mandatory=$false)]
        [BuildReason]$ReasonFilter = [BuildReason]::all
    )
    $route = "build/builds"
    $queryParameters = @{
        "definitions" = [string]::Join(",", $DefinitionIDs);
        "queryOrder" = $QueryOrder.ToString();
        "statusFilter" = $StatusFilter.ToString();
        "branchName" = $BranchName;
        "resultFilter" = $ResultFilter;
        "tagFilters" = [string]::Join(",", $TagFilters);
        "reasonFilter" = $ReasonFilter.ToString()
    }
    $response = Make-HTTP-Request-To-Azure-DevOps-API -Route $route -Method GET -QueryParameters $queryParameters
    return $response
}

# delete old build from certain definition
function Delete-Old-Builds-From-Definition {
    Param(
        [Parameter(Mandatory=$true)]
        [int]$DefinitionID
    )
    $definitionIDs = @($DefinitionID)
    $builds = Get-Builds -DefinitionIDs $definitionIDs -QueryOrder startTimeAscending
    $lastSucceededBuildID = -1
    foreach($build in $builds.value) {
        if($build.result -eq "succeeded") {
            $lastSucceededBuildID = $build.id`
        }
    }

    foreach($build in $builds.value) {
        if($build.id -ne $lastSucceededBuildID) {
            [void](Delete-Build -BuildID $build.id)
        }
    }
}

# Create Build Definition
Function Save-Policy-Setting {
    Param(
        [Parameter(Mandatory=$true)]
        [object]$RequestBody,
        [Parameter(Mandatory=$false)]
        [Nullable[int]]$SettingID
    )
    $method = "POST"
    $route = "policy/Configurations"
    if($SettingID.HasValue) {
        $route += "/" + $SettingID.Value    
        $method = "PUT"
    }
    $response = Make-HTTP-Request-To-Azure-DevOps-API -Route $route -Method $method -RequestBody $RequestBody
    return $response
}

function Set-Required-Reviewer-Count-Policy-Setting {
    Param(
        # [Parameter(Mandatory=$true)]
        # [string]$RepositoryID,
        [Parameter(Mandatory=$true)]
        [string]$RefName,
        [Parameter(Mandatory=$true)]
        [ValidateRange(1,10)]
        [int]$MinReviewerCount,
        [Parameter(Mandatory=$false)]
        [bool]$AllowDownvotes,
        [Parameter(Mandatory=$false)]
        [bool]$СreatorVoteCounts,
        [Parameter(Mandatory=$false)]
        [bool]$ResetOnSourcePush,
        [Parameter(Mandatory=$false)]
        [Nullable[int]]$SettingsID
    )
    $RefName = Convert-Branch-Name $RefName
    $args = @{
        RepositoryID = $repositoryId;
        RefName = $RefName;
        MinReviewerCount = $MinReviewerCount;
        AllowDownvotes = $AllowDownvotes;
        СreatorVoteCounts = $СreatorVoteCounts;
        ResetOnSourcePush = $ResetOnSourcePush;
    }

    $requestBody = Get-Required-Reviewer-Count-Policy-Setting-Request-Body @args
    Save-Policy-Setting -RequestBody $requestBody -SettingID $SettingsID 
}

function Set-Merge-Strategy-Policy-Setting {
    Param(
        # [Parameter(Mandatory=$true)]
        # [string]$RepositoryID,
        [Parameter(Mandatory=$true)]
        [string]$RefName,
        [Parameter(Mandatory=$false)]
        [bool]$AllowNoFastForward,
        [Parameter(Mandatory=$false)]
        [bool]$AllowRebase,
        [Parameter(Mandatory=$false)]
        [bool]$AllowRebaseMerge,
        [Parameter(Mandatory=$false)]
        [bool]$AllowSquash,
        [Parameter(Mandatory=$false)]
        [Nullable[int]]$SettingsID
    )
    $RefName = Convert-Branch-Name $RefName
    $args = @{
        RepositoryID = $repositoryId;
        RefName = $RefName;
        AllowNoFastForward = $AllowNoFastForward;
        AllowRebase = $AllowRebase;
        AllowRebaseMerge = $AllowRebaseMerge;
        AllowSquash = $AllowSquash;
    }

    $requestBody = Get-Merge-Strategy-Policy-Setting-Request-Body @args
    Save-Policy-Setting -RequestBody $requestBody -SettingID $SettingsID 
}

function Set-Build-Validation-Policy-Settings {
    Param(
        # [Parameter(Mandatory=$true)]
        # [string]$RepositoryID,
        [Parameter(Mandatory=$true)]
        [string]$RefName,
        [Parameter(Mandatory=$true)]
        [string]$BuildDefinitionId,
        [Parameter(Mandatory=$false)]
        [ValidateRange(0, [int]::MaxValue)]
        [int]$ValidDuration,    
        [Parameter(Mandatory=$false)]
        [bool]$QueueOnSourceUpdateOnly,
        [Parameter(Mandatory=$false)]
        [bool]$ManualQueueOnly,
        [Parameter(Mandatory=$false)]
        [string]$DisplayName
    )
    $RefName = Convert-Branch-Name $RefName
    $args = @{
        RepositoryID = $repositoryId;
        RefName = $RefName;
        BuildDefinitionId = $BuildDefinitionId;
        ValidDuration = $ValidDuration;
        QueueOnSourceUpdateOnly = $QueueOnSourceUpdateOnly
        ManualQueueOnly = $ManualQueueOnly
    }

    $requestBody = Get-Build-Validation-Policy-Setting-Request-Body @args
    Save-Policy-Setting -RequestBody $requestBody -SettingID $SettingsID 
}