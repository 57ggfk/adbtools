echo off
cd /d %~dp0
title 清除安卓手机密码
echo 请开启手机调试
echo 确保手机已经获取root权限，保持屏幕常亮不锁屏
echo 如果出现授权提示请点“允许”
echo 等待设备连接：
adb wait-for-device

adb shell su -c "mount -o remount rw /data"
echo.
echo 清除访问限制...
adb shell su -c "rm  /data/system/access_control.key"
echo.
echo 清除图形密码(九宫格锁)...
adb shell su -c "rm  /data/system/gesture.key"
echo.
echo 清除数字密码...
adb shell su -c "rm  /data/system/password.key"
echo.
adb shell su -c "mount -o remount ro /data"

pause
