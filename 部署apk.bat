echo off
path "D:\Program Files\����ˢ��\tools";%path%
::path "D:\Program Files\ˢ������";%path%
set file=%~nx1
prompt $G
cd /d "%1"
cls

adb devices
echo ���ڰ�װ��%file%
set APK="%temp%\temp.apk"
copy "%file%" "%temp%\temp.apk" > nul
adb install -r "%temp%\temp.apk"
del "%temp%\temp.apk"
@echo.
@ping 127.0.0.1 -n 6 -w 1000 > nul