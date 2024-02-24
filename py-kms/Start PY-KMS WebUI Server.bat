@echo off
set CWD=%~dp0
set DBDIR=db
set PYKMS_SQLITE_DB_PATH=%DBDIR%\PYKMS_database.db
set PORT=8081
set PYKMS_LICENSE_PATH=LICENSE
set PYKMS_VERSION_PATH=/VERSION
cd %CWD%
waitress-serve --listen=0.0.0.0:%PORT% pykms_WebUI:app
exit /B 0