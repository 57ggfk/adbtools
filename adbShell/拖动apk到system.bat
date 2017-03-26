cd /d %~dp0

adb remount /system/
adb push "%1" /system/app/%~nx1
adb shell busybox chmod 644 /system/app/%~nx1

PAUSE