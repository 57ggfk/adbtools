echo off
path "D:\Program Files\完美刷机\tools";%path%
::path "D:\Program Files\刷机精灵";%path%
set file=%~nx1
prompt $G
cd /d "%1"
cls

adb devices
echo 正在安装：%file%
set APK="%temp%\temp.apk"
copy "%file%" "%temp%\temp.apk" > nul
adb install -r "%temp%\temp.apk"
del "%temp%\temp.apk"
@echo.
@ping 127.0.0.1 -n 6 -w 1000 > nul