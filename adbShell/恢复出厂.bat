echo off
prompt $G
cls
@echo.
adb shell su -c "mount -o remount rw /cache"
adb shell su -c "echo '--wipe_data' > /cache/recovery/command"
adb shell su -c "echo '--wipe_cache' >> /cache/recovery/command"
adb shell su -c "mount -o remount ro /cache"
adb sync
@pause >nul | echo ���������ʼ�ָ�����
adb reboot recovery
