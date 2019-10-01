$repositoryId = "e6d2f456-3afc-43e5-ac97-9d571e7fa57d"
$apiKey = "xe6twlovporcyjzzmuxrooxzqmxq32gw4s36tkfjwtb4jipovz5a"
$orgName = "tauke1"
$projectID = "d0b80027-2250-45b3-bda4-d9b77d41ab30"
$badCommit = "e8d1fedefd1d717eac11e0e1c9d927875cd60bc5"
$fixCommit = "3123123"
$buildDefinitionId = "[P][Master][CI]"
$sourceCommit = ""


.\script.ps1 -apiKey $apiKey -orgName $orgName -projectID $projectID -buildDefinitionId $buildDefinitionId -repositoryId $repositoryId -badCommit $badCommit -fixCommit $fixCommit -sourceCommit $sourceCommit