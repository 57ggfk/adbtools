@echo off
cd /d %~dp0
title �����׿�ֻ�����
echo �뿪���ֻ�����
echo ȷ���ֻ��Ѿ���ȡrootȨ�ޣ�������Ļ����������
echo ���������Ȩ��ʾ��㡰����
echo �ȴ��豸���ӣ�
adb wait-for-device

adb shell su -c "mount -o remount rw /system"
echo.
echo �����Ȩ����...
adb shell su -c "rm  /system/app/Superuser.apk"
echo ���su
adb shell su -c "rm  /system/*/su"
echo.
adb shell su -c "mount -o remount ro /system"

pause
