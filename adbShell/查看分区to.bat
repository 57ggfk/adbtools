@echo off
cd /d %~dp0
prompt $G

cls
adb wait-for-device
echo �ֻ��ڴ���Ϣ. . .
::adb shell free
echo ********************************************************************************
echo �ֻ�������Ϣ. . .
adb shell "busybox df -h" > partitions.txt
echo.
echo �ֻ�������Ϣ. . .
adb shell df >> partitions.txt
echo ********************************************************************************
echo �ֻ���������Ϣ. . .
adb shell cat /proc/partitions -l >> partitions.txt
echo ********************************************************************************
echo �ֻ�������Ϣ. . .
adb shell cat /proc/mounts -l >> partitions.txt
adb shell mount >> partitions.txt
echo ********************************************************************************
echo �ֻ�����MTD��Ϣ. . .
adb shell cat /proc/mtd -l >> partitions.txt 
adb shell cat /proc/emmc -l >> partitions.txt
echo ������ִ����ϣ��밴������˳�. . .
pause > nul