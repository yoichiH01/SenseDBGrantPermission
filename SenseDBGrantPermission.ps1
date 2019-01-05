# Qlik Sense DB - Grant Permission version 1.0 Author: Yoichi H #
$PosgresLocation = "C:\Program Files\Qlik\Sense\Repository\PostgreSQL\9.6\bin"
$PosgresLocation
$sql = "C:\yheTemp\SenseDBGrantPermission.sql"
$sql


Start-Process -FilePath $("$PosgresLocation\psql.exe") -ArgumentList "-h localhost -p 4432 -d QSR -U postgres -f $sql"

Write-Host "Script execution Finished `r`n"