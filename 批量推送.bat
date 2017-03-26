path "D:\Program Files\完美刷机\tools";%path%

prompt $G
cd /d "%1"
cls
@echo 当前目录：cd  =%cd%
@echo 当前文件：file=%file%
@echo.
adb wait-for-device
adb devices

adb shell su -c "mount -o remount rw /system"

for /f "delims=" %%i in ('dir /b /a-d /s *.apk') do (
echo push %%~nxi to /system/app
set APK=%%~nxi
adb push %%~nxi /data/local/tmp/
adb shell su -c "cat /data/local/tmp/%%~nxi > /system/app/%%~nxi; chown 0.0 /system/app/%%~nxi; chmod 644 /system/app/%%~nxi; rm /data/local/tmp/%%~nxi"
)

for /f "delims=" %%j in ('dir /b /a-d /s *.so') do (
echo push %%~nxj to /system/lib
set LIB=%%~nxj
adb push %%~nxj /data/local/tmp/
adb shell su -c "cat /data/local/tmp/%%~nxj > /system/lib/%%~nxj; chown 0.0 /system/lib/%%~nxj; chmod 644 /system/lib/%%~nxj; rm /data/local/tmp/%%~nxj"
)

adb shell su -c "mount -o remount rw /system"

pause
adb reboot