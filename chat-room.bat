@echo off
title Chat Room
cls

set command="false"
set /p chatFile="Which chat room would you like to connect to? "
set chatFile=%chatFile:"=%
set chatFile="chat-rooms\chat-%chatFile%.txt"
find /c /i "%username%" "chatters.txt" | find ": 0">NUL
if %errorlevel% == 1 (
	goto START
) else exit

:START
if exist "users\%username%.bat" (
	call "users\%username%.bat"
) else (
	goto NEW
)
set name=%name:"=%
echo Logged in as %name%.
echo %name% has logged in.>>%chatFile%
if exist %chatFile% (
	echo Chat file exists.
) else (
	echo.>%chatFile%
)
START cmd /c "Chat Console.bat"
echo.
goto CHAT

:NEW
set /p newName="Enter the name you would like to use: "
set newName=%newName:"=%
echo set name="%newName%">"users\%username%.bat"
goto START

:CHAT
set /p chat=">"
set chat=%chat:"=%
if "%chat%" == "$cls" (
	goto CLS
) else (
	echo [%date% %time%] %name%: "%chat%">>%chatFile%
)
goto CHAT

:CLS
echo.>%chatFile%
cls
goto CHAT
