@echo off
setlocal enabledelayedexpansion
chcp 65001 >nul
title vscinstaller

set arg=%2
set orgPath=%1

if /I "!arg!"=="" (
    if /i EXIST "%localappdata%\Programs\Microsoft VS Code\code.exe" (
        echo Visual Studio Code is already install on this computer
        pause >nul
        %orgPath%\MultiTool.bat
    )
    powershell Invoke-WebRequest -Uri "https://vscode.download.prss.microsoft.com/dbazure/download/stable/38c31bc77e0dd6ae88a4e9cc93428cc27a56ba40/VSCodeUserSetup-x64-1.93.1.exe" -OutFile "%tmp%\vscode.exe"
    start %temp%\vscode.exe
    %orgPath%\MultiTool.bat
)

if /I "!arg!"=="/s" (
    if /i EXIST "%localappdata%\Programs\Microsoft VS Code\code.exe" (
        echo Visual Studio Code is already install on this computer
        pause >nul
        %orgPath%\MultiTool.bat
    )
    powershell Invoke-WebRequest -Uri "https://vscode.download.prss.microsoft.com/dbazure/download/stable/38c31bc77e0dd6ae88a4e9cc93428cc27a56ba40/VSCodeUserSetup-x64-1.93.1.exe" -OutFile "%tmp%\vscode.exe"
    start %temp%\vscode.exe /verysilent
    %orgPath%\MultiTool.bat
)