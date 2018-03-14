forfiles /p "C:\Backup\DB" /d -5 /c "cmd /c del @path"
cd "C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\110\Tools\Binn"
sqlcmd -S (local) -Q "EXEC sp_BackupDatabases @backupLocation='c:\Backup\DB\', @backupType='D'"  >> c:\Backup\DB\diff.log 2>&1