echo off
@prompt $g
path "%cd%";%path%
cd /d "%1"
cls
echo 等待设备连接
::adb wait-for-device
adb devices
adb shell mount |find /i "system"
echo 挂载/system为读写
adb shell su -c "mount -o remount rw /system"

echo 当前目录：%CD%
echo 开始部署system\app
adb push %nx1 /system/app
adb shell su -c "chmod 644 /system/app/%nx1"

echo 挂载/system为只读
adb shell su -c "mount -o remount ro /system"
PAUSE