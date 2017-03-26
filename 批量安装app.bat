@echo off
path "D:\Program Files\ÕÍ√¿À¢ª˙\tools";%path%
set file="%~dpnx1"
prompt $G
cd /d "%1"
cls
adb devices
for /f "delims=" %%i in ('dir /b /a-d /s *.apk') do (
echo.
echo installing %%~nxi
set APK = "%temp%\temp.apk"
copy "%%~fi" "%temp%\temp.apk"
adb install "%temp%\temp.apk"
del "%temp%\temp.apk"
)
pause