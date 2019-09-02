$serverInstance = "tauke1994.database.windows.net"
$userName = "sql_admin"
$userPassword = "Qwerty1994!"
$databaseName = "azure-devops"
$isWindowsAuth = $false

if($isWindowsAuth -eq $true) {
    invoke-sqlcmd -inputfile "sqlScripts/tables.sql" -serverinstance $serverInstance -database $databaseName 
    invoke-sqlcmd -inputfile "sqlScripts/helperTablesSeeds.sql" -serverinstance $serverInstance -database $databaseName 
    invoke-sqlcmd -inputfile "sqlScripts/buildTableSeeds.sql" -serverinstance $serverInstance -database $databaseName 
    invoke-sqlcmd -inputfile "sqlScripts/timelineSeeds.sql" -serverinstance $serverInstance -database $databaseName 
    invoke-sqlcmd -inputfile "sqlScripts/testSeeds.sql" -serverinstance $serverInstance -database $databaseName 
    invoke-sqlcmd -inputfile "sqlScripts/addConstraints.sql" -serverinstance $serverInstance -database $databaseName
} else {
    invoke-sqlcmd -inputfile "sqlScripts/tables.sql" -serverinstance $serverInstance -database $databaseName -Username $userName -Password $userPassword 
    invoke-sqlcmd -inputfile "sqlScripts/helperTablesSeeds.sql" -serverinstance $serverInstance -database $databaseName  -Username $userName -Password $userPassword 
    invoke-sqlcmd -inputfile "sqlScripts/buildTableSeeds.sql" -serverinstance $serverInstance -database $databaseName  -Username $userName -Password $userPassword 
    invoke-sqlcmd -inputfile "sqlScripts/timelineSeeds.sql" -serverinstance $serverInstance -database $databaseName  -Username $userName -Password $userPassword
    invoke-sqlcmd -inputfile "sqlScripts/testSeeds.sql" -serverinstance $serverInstance -database $databaseName  -Username $userName -Password $userPassword 
    invoke-sqlcmd -inputfile "sqlScripts/addConstraints.sql" -serverinstance $serverInstance -database $databaseName  -Username $userName -Password $userPassword 
}

