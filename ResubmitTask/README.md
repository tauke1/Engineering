Before you run the script.ps1 you should
1) In the region set own AzureAPI variables
```
$orgName = "tauke1" - organization name of Azure Devops API
$projectID = "d0b80027-2250-45b3-bda4-d9b77d41ab30" - current project id of Azure Devops API
$apiVersion = "5.1" - api version of Azure Devops API
$repositoryId = "e6d2f456-3afc-43e5-ac97-9d571e7fa57d" - git repository id of Azure Devops API
$apiKey = "xe6twlovporcyjzzmuxrooxzqmxq32gw4s36tkfjwtb4jipovz5a" - api key of Azure Devops API
$isWriteHostCalledURLs = $false - Flag to show which urls are called frok Azure DevOps Rest API
```
2) And you should set variables for Build Resubmition
```
$badCommit = "e8d1fedefd1d717eac11e0e1c9d927875cd60bc5" - id of bad commit(sha2)
$sourceBranchName = "refs/heads/master" - source branch for builds which be resubmitted
# empty value means that we should take last commit of sourceBrancName
$sourceCommit = "" - source commit for builds which be resubmitted
$buildDefinitionId = "[P][Master][CI]" - name of the definition which we will run resubmittions of it's builds
```
3) In the region BuildResubmitTask you can change hashset $ignorePolicyIds, which contains policyIds are being ignored in policy validation of pull request

The Algorithm
1) Search definition by name $buildDefinitionId
2) Search maximum 3-days old builds of current definition, which triggered by Pull Request
3) In cycle check that the build's pull request are valid by policies of it's branch
4) Check that build status should not be "success" and "canceled"
5) Check that build sourceCommit should contain bad commit on it's parent commits
6) Rebuild the build with same parameters and properties, but set properties 
```
$build.sourceBranch = $sourceBranchName
$build.sourceVersion = $sourceCommit
```