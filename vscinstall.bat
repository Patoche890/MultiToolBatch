@echo off
setlocal enabledelayedexpansion
chcp 65001 >nul
title vscinstaller

set arg=%2
set orgPath=%1

if /i EXIST "%localappdata%\Programs\Microsoft VS Code\code.exe" (
    echo %w% Vs Code is already install on this computer
    pause >nul
    call %orgPath%\MultiTool.bat
)
powershell Invoke-WebRequest -Uri "https://vscode.download.prss.microsoft.com/dbazure/download/stable/384ff7382de624fb94dbaf6da11977bba1ecd427/VSCodeUserSetup-x64-1.94.2.exe" -OutFile "%tmp%\vscode.exe"
if /I "!arg!"=="/s" (
    start %temp%\vscode.exe /verysilent
    call %orgPath%\MultiTool.bat
)
start %temp%\vscode.exe
call %orgPath%\MultiTool.bat
