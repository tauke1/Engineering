Instructions:
There are 3 files
1) devops.ps1 - main file which contains algorithm of current task
2) api/rest.ps1 - implementation of some REST methods of Azure DevOps API, most of methods are very flexible which are behind of task context. 
3) api/policySettingsTemplates.ps1 which contains methods of generating request bodies for policy setting creation

There is no config files, but you can change variables inside scripts in file api/rest.ps1
```
// organization name in azure devops api
$orgName = "tauke1"

// project id or name in azure devops api of current user
$projectID = "d0b80027-2250-45b3-bda

// azure devops api version
$apiVersion = "5.1"

// repository id or name in azure devops project
$repositoryId = "e6d2f456-3afc-43e5-ac97-9d571e7fa57d"

// this values taken from azure devops frontend application
$oldObjectId = "0000000000000000000000000000000000000000"

// api key of azure devops api
$apiKey = "xe6twlovporcyjzzmuxrooxzqmxq32gw4s36tkfjwtb4jipovz5a"
```

Note: MM.dd is a date format of currentDay-

Run devops.ps1 script.
The algorithm
1) Load scripts from api folder
2) Finds 3-day old build definitions and deletes all builds in them except last successful build
3) Create branch named release-MM.dd format from master branch
4) Create policy settings like minimum reviewers count and merge strategy settings
5) find build definition named [P][Master][CI] or [P][Master][PR] or [P][Master][Validation] and clone them to [P][Master][MM.dd][CI], [P][Master][MM.dd][PR], [P][Master][MM.dd][Validation] named new build definitions(related to new branch) in postfix(MM.dd) folder
6) Create policy settings for build validation for new branch related to created build definitions

There is some output to console which tells what URLs called, some useful checkpoints in code

Setting Build variables:
1) Go to https://dev.azure.com/tauke1/_git/test?path=%2Fazure-pipelines.yml&version=GBmaster
2) Let's see to part of azure-pipelines.yml code
```
variables:
  Build.DropRoot : "\\\\bies-pbi"
- powershell: |
      $dropRoot = "$env:BUILD_DROPROOT\$env:BUILD_SOURCEBRANCHNAME\$env:BUILD_BUILDID"
      Write-Host "dropRoot is $dropRoot"
      Write-Host "##vso[task.setvariable variable=Build.DropRoot]$dropRoot"
  displayName: 'Set Build Variables'
- powershell: |
      Write-Host "Build.DropRoot = $env:BUILD_DROPROOT"
  displayName: 'Get Setted variables'
```
3) The "Task Set Build Variables" sets Build.DropRoot variable to the format \\bies-pbi\{sourceBranchName}\BuildID 
   And shows the result in Get Setted Variables(Build.DropRoot)
