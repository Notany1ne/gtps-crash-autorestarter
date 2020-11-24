:autorestart
@shift /0
@echo off
color 2
title = ( C ) crash auto restarter
echo.
echo { A crash auto restarter created by notany1ne#0063 }
echo {        https://twitter.com/notany1ne             }
echo {        https://github.com/notany1ne              }
echo.
set /p enetname="[!] enter your exe name : "
echo attempting to start %enet% >> logs.txt
goto wew

:wew
for /F "tokens=2" %%i in ('date /t') do set mydate=%%i
set mytime=%time%
color 6
echo [$] your server is running!
echo %mydate%:%mytime% your server is running >> autorestarter.txt
start /w %enet%
color 5
echo [!] your server crashed!
echo %mydate%:%mytime% crashed >> autorestarter.txt
color 3
echo [?]attempting to restart the server
echo %mydate%:%mytime% attempting to restart the server..>> logs.txt
goto wew
