@echo off
color 0F
c:\
goto launcher

:launcher
cls
echo.
echo.
echo.	-----------------------------------------------------
echo.		     Unreal Tournament 2004 - GOG
echo.	-----------------------------------------------------
echo.
echo.	1) Play Unreal Tournament 2004
echo.	2) Enter your personnal GOG CDKey
echo.	3) Exit
echo.
echo.	-----------------------------------------------------
echo.
echo.   Your choice? [1-3]: 
choice /c123 /s /N 	
if errorlevel 3 goto :exit
if errorlevel 2 goto :cdkey
if errorlevel 1 goto :play

:play
cd c:\GOG Games\Unreal Tournament 2004\System\
start UT2004.exe
goto :launcher

:cdkey
cls
echo.
echo.
echo.	-----------------------------------------------------
echo.		     Unreal Tournament 2004 - GOG
echo.	-----------------------------------------------------
echo.
echo. 	GOG provides UT2004 with a generic CDKey 3QHVC-DHA9K-A84RE-KYRT4
echo.	that do not permit you to play in multiplayer mode,
echo.	you could be banned on most UT2004 servers.
echo. 	To play UT2004 in multiplayer mode, you will need to ask for your
echo. 	personal UT2004 CDKey to GOG support here:
echo.
echo. 	http://www.gog.com/support/contact/technical_issues_with_games/unreal_tournament_2004_ece
echo.
echo. 	Choose the multiplayer key request option for problem type.
echo.
echo.	Do you want to enter your UT2004 personnal CDKey
echo.	provided by GOG support now?  
set /p yesno=	(Y)es? (N)o?

If /I "%yesno%"=="y" goto :yes 
If /I "%yesno%"=="n" goto :launcher
goto :cdkey

:yes
echo.	Enter your UT2004 personnal CDKey provided by GOG support:
set CDKEY=
set /p CDKEY=	
if [%CDKEY%]==[] goto :emptycdkey
reg add "HKLM\Software\Wow6432Node\Unreal Technology\Installed Apps\UT2004" /t REG_SZ /v CDKey /d %CDKEY% /f
echo. 	UT2004 CDKey has been corrrectly changed to %CDKEY%.
pause
goto :launcher

:gamepad
cls
start explorer "c:\GOG Games\Unreal Gold\gamepad profiles\"
start iexplore "c:\GOG Games\Unreal Gold\gamepad profiles\unreal_gamepad_readme.html"
goto launcher

:emptycdkey
echo.	You didn't enter a new UT2004 CDKey,
echo.	you will be redirected to the main menu
pause
goto :launcher

:exit
exit

