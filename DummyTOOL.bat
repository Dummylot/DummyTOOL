@echo off
title DummyTOOL --by Dummylot
cls
chcp 65001 >nul
:start
call :banner
call :menu
cd TOOLS
:menu
echo 1) Webhook messenger		║ 4) Install Packages (setup)
echo 2) Game			        ║ 5) Coming soon
echo 3) Nuker			║ 6) Coming soon
set /p input=">"%BS%
if /I %input% EQU 1 (
    start python TOOLS/Webhook.py
    goto :start
)
if /I %input% EQU 2 (
	start python TOOLS/Game/game.py
    goto :start
)
if /I %input% EQU 3 (
    start python TOOLS/bot.py
    goto :start
)
if /I %input% EQU 4 (
	pip install -r requirements.txt
	goto :start
)
cls
goto :start
echo.
pause

:banner
echo.
echo.
echo		 ██████╗ ██╗   ██╗███╗   ███╗███╗   ███╗██╗   ██╗████████╗ ██████╗  ██████╗ ██╗     
echo		 ██╔══██╗██║   ██║████╗ ████║████╗ ████║╚██╗ ██╔╝╚══██╔══╝██╔═══██╗██╔═══██╗██║     
echo		 ██║  ██║██║   ██║██╔████╔██║██╔████╔██║ ╚████╔╝    ██║   ██║   ██║██║   ██║██║     
echo		 ██║  ██║██║   ██║██║╚██╔╝██║██║╚██╔╝██║  ╚██╔╝     ██║   ██║   ██║██║   ██║██║     
echo		 ██████╔╝╚██████╔╝██║ ╚═╝ ██║██║ ╚═╝ ██║   ██║      ██║   ╚██████╔╝╚██████╔╝███████╗
echo		 ╚═════╝  ╚═════╝ ╚═╝     ╚═╝╚═╝     ╚═╝   ╚═╝      ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo.
echo.
