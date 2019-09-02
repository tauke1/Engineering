Look at migration.ps1
there are 4 variables
```
$serverInstance = "tauke1994.database.windows.net" - server ip
$userName = "sql_admin" - userName, if $isWindowsAuth is true, no necessary to fill it 
$userPassword = "Qwerty1994!" - username password
$databaseName = "azure-devops" - current catalog
$isWindowsAuth = $false - is auth based on windows authentification
```