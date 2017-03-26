@echo off
cd /d %~dp0
prompt $G

cls
adb wait-for-device
echo 手机内存信息. . .
::adb shell free
echo ********************************************************************************
echo 手机分区信息. . .
adb shell "busybox df -h"
echo.
echo 手机分区信息. . .
adb shell df
echo ********************************************************************************
echo 手机分区表信息. . .
adb shell cat /proc/partitions -l
echo ********************************************************************************
echo 手机挂载信息. . .
adb shell cat /proc/mounts -l
adb shell mount
echo ********************************************************************************
echo 手机分区MTD信息. . .
adb shell cat /proc/mtd -l
adb shell cat /proc/emmc -l
echo 批处理执行完毕，请按任意键退出. . .
pause > nul