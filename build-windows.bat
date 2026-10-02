@echo off
setlocal
cd /d "%~dp0"
echo Installing dependencies...
npm install
if errorlevel 1 goto fail
echo Building Bhunya ERP Windows installer...
npm run dist:win
if errorlevel 1 goto fail
echo.
echo BUILD COMPLETE. Check the dist folder.
pause
exit /b 0
:fail
echo BUILD FAILED. Please check the error above.
pause
exit /b 1
