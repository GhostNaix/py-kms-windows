@echo off
set CWD=%~dp0
set DBDIR=db
set PYKMS_SQLITE_DB_PATH=%DBDIR%\PYKMS_database.db
IF not exist %DBDIR% (mkdir %DBDIR%)
cd %CWD%
python pykms_Server.py -s %PYKMS_SQLITE_DB_PATH%
exit /B 0