@echo off
cd /d %~dp0
prompt $G

cls
adb wait-for-device
echo 手机内存信息. . .
::adb shell free
echo ********************************************************************************
echo 手机分区信息. . .
adb shell "busybox df -h" > partitions.txt
echo.
echo 手机分区信息. . .
adb shell df >> partitions.txt
echo ********************************************************************************
echo 手机分区表信息. . .
adb shell cat /proc/partitions -l >> partitions.txt
echo ********************************************************************************
echo 手机挂载信息. . .
adb shell cat /proc/mounts -l >> partitions.txt
adb shell mount >> partitions.txt
echo ********************************************************************************
echo 手机分区MTD信息. . .
adb shell cat /proc/mtd -l >> partitions.txt 
adb shell cat /proc/emmc -l >> partitions.txt
echo 批处理执行完毕，请按任意键退出. . .
pause > nul