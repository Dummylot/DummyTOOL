@echo off
cls
echo DummyTOOL --PING
:: Enter the Host to ping
set /p target=Enter the Host to ping:
:: Ping
ping %target% -n 4

pause
cd ..
start DummyTOOL.bat