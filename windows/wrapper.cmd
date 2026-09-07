@echo off
rem Tek sarmalayici, dokuz isim: cmd.exe %~n0 ile kendi adini okur, yanindaki
rem ayni adli bash betigini calistirir. install.sh bunu her komut icin kopyalar.
setlocal
chcp 65001 >nul
set "PATH=%LOCALAPPDATA%\Microsoft\WinGet\Links;%APPDATA%\npm;%PATH%"
if exist "%ProgramFiles%\Git\bin\bash.exe" (
    "%ProgramFiles%\Git\bin\bash.exe" "%~dp0%~n0" %*
) else (
    bash "%~dp0%~n0" %*
)
