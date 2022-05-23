@echo off
title Chat Console
cls

goto PRINTCHAT

:PRINTCHAT
type %chatFile%
timeout /t 1 /nobreak>NUL
cls
goto PRINTCHAT