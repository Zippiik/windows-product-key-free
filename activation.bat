echo off
title Warning!
color c
goto warning
cls

:warning
cls
echo.
echo    Before you activate run this program as administrator
echo.
echo    Click for contiunue . . .
echo.
pause >nul
cls
goto welcome

:welcome
color 3f
cls
set /p name=Whats your name?
goto start

:start
title Windows Activation selected name: %name%
cls
echo.
echo     Hello %name% do you want to activate windows for free?
echo.
echo     Y/N
echo.
set /p input=
if "%input%" == "Y" goto yes
if "%input%" == "y" goto yes
if "%input%" == "Yes" goto yes
if "%input%" == "yes" goto yes
if "%input%" == "N" goto no
if "%input%" == "n" goto no
if "%input%" == "No" goto no
if "%input%" == "no" goto no

:yes
cscript slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
cscript slmgr.vbs /skms kms.lotro.cc
cscript slmgr.vbs /ato
cls
echo Windows Activated!
echo.
goto restart

:no
exit

:restart
cls
echo    Windows must be restarted!
timeout /t 3 >nul
cls
echo Restarting 5
timeout /t 1 >nul
cls
echo Restarting 4
timeout /t 1 >nul
cls
echo Restarting 3
timeout /t 1 >nul
cls
echo Restarting 2
timeout /t 1 >nul
cls
echo Restarting 1
timeout /t 1 >nul
cls
shutdown -r -t 0