@echo off
color 0f

c:

goto :launcher

:launcher
cls
echo.
echo.
echo.	-------------------------------------------------------------
echo.			     Genshin Impact
echo.	-------------------------------------------------------------
echo.
echo.	 1) Play Genshin Impact (patched)
echo.	 2) Update Genshin Impact(do not launch game)
echo.	 3) Exit
echo.
echo.	-------------------------------------------------------------
echo.
echo.
echo.  	 Your choice? [1-3]:

choice /s /N	/c12345
if errorlevel 3 goto :exit
if errorlevel 2 goto :update
if errorlevel 1 goto :play


:play
cd "c:\Program Files\Honkai Impact 3rd glb\Games"
start launcher.bat
goto :launcher

:update
cd "c:\Program Files\Honkai Impact 3rd glb"
start launcher.exe
goto :launcher

:exit
exit
