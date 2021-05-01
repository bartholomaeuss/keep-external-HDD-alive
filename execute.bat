@echo off
TITLE "Keeping your HDD alive - DO NOT CLOSE"
mode con cols=80 lines=3
set interval=300
set drive="E:"
set file= %drive%\heartbeat.log
set /a i=1
:start
set datetime=%DATE%;%TIME%
echo %i%;%datetime% >> %file%
timeout /t %interval% /nobreak
set /a i=i+1
cls
goto start