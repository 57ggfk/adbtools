path "D:\Program Files\����ˢ��\tools";%path%
set file="%~dpnx1"
prompt $G
cd /d "%1"
cls
@echo ��ǰĿ¼��cd  =%cd%
@echo ��ǰ�ļ���file=%file%
@echo.
adb push %~nx1 /data/local/tmp/
adb shell su -c "mount -o remount rw /system; cat /data/local/tmp/%~nx1 > /system/app/%~nx1; chown 0.0 /system/app/%~nx1; chmod 644 /system/app/%~nx1; mount -o remount rw /system"
adb shell "rm /data/"local/tmp/%~nx1"
pause
adb reboot