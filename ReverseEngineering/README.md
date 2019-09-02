Look at migration.ps1
there are 5 variables
```
$serverInstance = "tauke1994.database.windows.net" - server ip
$userName = "sql_admin" - userName, if $isWindowsAuth is true, no necessary to fill it 
$userPassword = "Qwerty1994!" - username password
$databaseName = "azure-devops" - current catalog
$isWindowsAuth = $false - is auth based on windows authentification
```

After you set this variables, then run the script

In folder sqlScript located following scripts:
1) tables.sql - create all tables
2) helperTablesSeeds.sql - filling helper tables
3) buildTableSeeds.sql - filling tables related to builds
4) timelineSeeds - filling tables related to timelines
5) testSeeds.sql - filling tables related to tests
6) addConstraints.sql - adding contrants to tables

In folder netCoreWebApp located web-application with database classes (Code First Entity Framework Methodology)