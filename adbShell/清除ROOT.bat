@echo off
cd /d %~dp0
title 清除安卓手机密码
echo 请开启手机调试
echo 确保手机已经获取root权限，保持屏幕常亮不锁屏
echo 如果出现授权提示请点“允许”
echo 等待设备连接：
adb wait-for-device

adb shell su -c "mount -o remount rw /system"
echo.
echo 清除授权管理...
adb shell su -c "rm  /system/app/Superuser.apk"
echo 清除su
adb shell su -c "rm  /system/*/su"
echo.
adb shell su -c "mount -o remount ro /system"

pause
