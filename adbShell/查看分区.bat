@echo off
cd /d %~dp0
prompt $G

cls
adb wait-for-device
echo �ֻ��ڴ���Ϣ. . .
::adb shell free
echo ********************************************************************************
echo �ֻ�������Ϣ. . .
adb shell "busybox df -h"
echo.
echo �ֻ�������Ϣ. . .
adb shell df
echo ********************************************************************************
echo �ֻ���������Ϣ. . .
adb shell cat /proc/partitions -l
echo ********************************************************************************
echo �ֻ�������Ϣ. . .
adb shell cat /proc/mounts -l
adb shell mount
echo ********************************************************************************
echo �ֻ�����MTD��Ϣ. . .
adb shell cat /proc/mtd -l
adb shell cat /proc/emmc -l
echo ������ִ����ϣ��밴������˳�. . .
pause > nul