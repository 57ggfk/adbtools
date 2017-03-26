@prompt $g
cd /d %~dp0
path "%cd%";%path%
pause
adb push busybox /data/local/tmp
adb shell su -c "chmod 777 /data/local/tmp/busybox"
adb shell su -c "mount -o remount rw /system"
adb shell su -c "cat /data/local/tmp/busybox > /system/xbin/busybox"
adb shell su -c "chown root.shell /system/xbin/busybox"
adb shell su -c "chmod 04755 /system/xbin/busybox"
adb shell su -c "/system/xbin/busybox --install -s /system/xbin"
adb shell su -c "mount -o remount ro /system"
adb shell "rm -r /data/local/tmp/busybox"

PAUSE