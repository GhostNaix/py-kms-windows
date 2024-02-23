@echo off
set DBDIR=db
set PYKMS_SQLITE_DB_PATH=%DBDIR%\PYKMS_database.db
set PORT=8080
set PYKMS_LICENSE_PATH=LICENSE
set PYKMS_VERSION_PATH=/VERSION
IF not exist %DBDIR% (mkdir %DBDIR%)
start python pykms_Server.py -s %PYKMS_SQLITE_DB_PATH%
start waitress-serve --listen=0.0.0.0:8081 pykms_WebUI:app
exit /B 0