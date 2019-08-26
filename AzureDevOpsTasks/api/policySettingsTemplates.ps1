# Get Template of creation of Policy Setting for Git Branch
function Get-Filled-Policy-Setting-Creation-Template {
    Param(
        [Parameter(Mandatory=$true)]
        [string]$TypeID,
        [Parameter(Mandatory=$true)]
        [HashTable]$Settings,
        [Parameter(Mandatory=$true)]
        [string]$RepositoryID,
        [Parameter(Mandatory=$true)]
        [string]$RefName
    )
    $scope = @(
        @{
            refName = $RefName;
            matchKind = "Exact";
            repositoryId = $RepositoryID;
        }
    )
    $Settings["scope"] = $scope

    return  @{  
        type=@{  
           id=$TypeID
        };
        revision=1;
        isDeleted=$false;
        isBlocking=$true;
        isEnabled=$true;
        id=-2;
        settings = $Settings;
     }
}

# Get Request Body fot Build Validation Policy Setting
Function Get-Build-Validation-Policy-Setting-Request-Body {
    Param(
        [Parameter(Mandatory=$true)]
        [string]$RepositoryID,
        [Parameter(Mandatory=$true)]
        [string]$RefName,
        [Parameter(Mandatory=$true)]
        [string]$BuildDefinitionId,
        [Parameter(Mandatory=$true)]
        [bool]$QueueOnSourceUpdateOnly,
        [Parameter(Mandatory=$true)]
        [bool]$ManualQueueOnly,
        [Parameter(Mandatory=$false)]
        [string]$DisplayName,
        [Parameter(Mandatory=$true)]
        [int]$ValidDuration
    )
    $typeID = "0609b952-1397-4640-95ec-e00a01b2c241"
    $settings = @{
        buildDefinitionId= $BuildDefinitionId;
        queueOnSourceUpdateOnly= $QueueOnSourceUpdateOnly;
        manualQueueOnly= $ManualQueueOnly;
        displayName= $DisplayName;
        validDuration= $ValidDuration;
    }
    $template = Get-Filled-Policy-Setting-Creation-Template -Settings $settings  -TypeID $typeID  -RepositoryID $RepositoryID -RefName $RefName
    #$template.GetType()
    return $template
}

# Get Request Body for Merge Strategy Policy setting
Function Get-Merge-Strategy-Policy-Setting-Request-Body {
    Param(
        [Parameter(Mandatory=$true)]
        [string]$RepositoryID,
        [Parameter(Mandatory=$true)]
        [string]$RefName,
        [Parameter(Mandatory=$true)]
        [bool]$AllowNoFastForward,
        [Parameter(Mandatory=$true)]
        [bool]$AllowRebase,
        [Parameter(Mandatory=$true)]
        [bool]$AllowRebaseMerge,
        [Parameter(Mandatory=$true)]
        [bool]$AllowSquash
    )
    $typeID = "fa4e907d-c16b-4a4c-9dfa-4916e5d171ab"
    $settings = @{
        allowNoFastForward = $AllowNoFastForward;
        allowRebase = $AllowRebase;
        allowRebaseMerge = $AllowRebaseMerge
        allowSquash = $AllowSquash
    }
    $template = Get-Filled-Policy-Setting-Creation-Template -Settings $settings  -TypeID $typeID  -RepositoryID $RepositoryID -RefName $RefName
    #$template.GetType()
    return $template
}

# Get Request body For Required Reviewer Count Setting
Function Get-Required-Reviewer-Count-Policy-Setting-Request-Body {
    Param(
        [Parameter(Mandatory=$true)]
        [string]$RepositoryID,
        [Parameter(Mandatory=$true)]
        [string]$RefName,
        [Parameter(Mandatory=$true)]
        [ValidateRange(1,10)]
        [int]$MinReviewerCount,
        [Parameter(Mandatory=$true)]
        [bool]$AllowDownvotes,
        [Parameter(Mandatory=$true)]
        [bool]$СreatorVoteCounts,
        [Parameter(Mandatory=$true)]
        [bool]$ResetOnSourcePush
    )
    $typeID = "fa4e907d-c16b-4a4c-9dfa-4906e5d171dd"
    $settings = @{
        allowDownvotes = $AllowDownvotes;
        creatorVoteCounts = $СreatorVoteCounts;
        minimumApproverCount = $MinReviewerCount;
        resetOnSourcePush = $ResetOnSourcePush;
    }
    $template = Get-Filled-Policy-Setting-Creation-Template -Settings $settings  -TypeID $typeID  -RepositoryID $RepositoryID -RefName $RefName
    return $template
}

