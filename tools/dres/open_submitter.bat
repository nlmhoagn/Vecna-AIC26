@echo off
cd /d "%~dp0"
title Vecna / AIC26 - DRES Submission Portal
echo ========================================================
echo   Vecna / AIC26 - DRES Submission Portal
echo ========================================================
echo.
echo Dang khoi dong cong submit tai http://localhost:8080 ...
echo (De dung server, hay dong cua so nay)
echo.
python submitter_server.py 8080
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [!] Khong the khoi dong bang python, dang thu mo bang trinh duyet...
    start http://localhost:8080/dres_submitter.html
    pause
)
