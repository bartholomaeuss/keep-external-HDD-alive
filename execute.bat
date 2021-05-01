@echo off
TITLE "Keeping your HDD alive - DO NOT CLOSE"
:start
set datetime=%DATE%%TIME%
echo %datetime% >> E:\heartbeat.txt
timeout /t 300 /nobreak
goto start