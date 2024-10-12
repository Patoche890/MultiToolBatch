@echo off
setlocal enabledelayedexpansion
chcp 65001 >nul
title pythinstall

set arg=%2
set orgPath=%1

if /i EXIST "%localappdata%\Programs\Python\Python313\python.exe" (
    echo %w% Python is already install on this computer
    pause >nul
    call %orgPath%\MultiTool.bat
)
powershell Invoke-WebRequest -Uri "https://www.python.org/ftp/python/3.13.0/python-3.13.0-amd64.exe" -OutFile "%tmp%\python.exe"
if /I "!arg!"=="/s" (
    start %temp%\python.exe /passive
    call %orgPath%\MultiTool.bat
)
start %temp%\python.exe
call %orgPath%\MultiTool.bat
