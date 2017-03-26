path "D:\Program Files\完美刷机\tools";%path%
set file="%~dpnx1"
prompt $G
cd /d "%1"
cls
@echo 当前目录：cd  =%cd%
@echo 当前文件：file=%file%
@echo.
adb push %~nx1 /data/local/tmp/
adb shell su -c "mount -o remount rw /system; cat /data/local/tmp/%~nx1 > /system/app/%~nx1; chown 0.0 /system/app/%~nx1; chmod 644 /system/app/%~nx1; mount -o remount rw /system"
adb shell "rm /data/"local/tmp/%~nx1"
pause
adb reboot