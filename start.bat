@echo off
cd /d "%~dp0"
set PORT=8765

where python >nul 2>&1
if %errorlevel% neq 0 (
    echo Install Python from https://python.org
    pause
    exit /b 1
)

start "Minesweeper Server" cmd /k "python -m http.server %PORT%"
timeout /t 2 /nobreak >nul
start http://localhost:%PORT%/

echo.
echo Game: http://localhost:%PORT%/
echo Close the server window to stop.
pause
