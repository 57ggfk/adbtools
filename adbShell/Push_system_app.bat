echo off
@prompt $g
path "%cd%";%path%
cd /d "%1"
cls
echo �ȴ��豸����
::adb wait-for-device
adb devices
adb shell mount |find /i "system"
echo ����/systemΪ��д
adb shell su -c "mount -o remount rw /system"

echo ��ǰĿ¼��%CD%
echo ��ʼ����system\app
adb push %nx1 /system/app
adb shell su -c "chmod 644 /system/app/%nx1"

echo ����/systemΪֻ��
adb shell su -c "mount -o remount ro /system"
PAUSE