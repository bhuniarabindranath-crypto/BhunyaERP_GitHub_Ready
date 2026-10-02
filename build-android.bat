@echo off
setlocal
cd /d "%~dp0"
npm install
if errorlevel 1 goto fail
if not exist android npx cap add android
npx cap sync android
if errorlevel 1 goto fail
cd android
gradlew.bat assembleDebug
if errorlevel 1 goto fail
echo APK: android\app\build\outputs\apk\debug\app-debug.apk
pause
exit /b 0
:fail
echo BUILD FAILED.
pause
exit /b 1
