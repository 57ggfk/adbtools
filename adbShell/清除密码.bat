echo off
cd /d %~dp0
title �����׿�ֻ�����
echo �뿪���ֻ�����
echo ȷ���ֻ��Ѿ���ȡrootȨ�ޣ�������Ļ����������
echo ���������Ȩ��ʾ��㡰����
echo �ȴ��豸���ӣ�
adb wait-for-device

adb shell su -c "mount -o remount rw /data"
echo.
echo �����������...
adb shell su -c "rm  /data/system/access_control.key"
echo.
echo ���ͼ������(�Ź�����)...
adb shell su -c "rm  /data/system/gesture.key"
echo.
echo �����������...
adb shell su -c "rm  /data/system/password.key"
echo.
adb shell su -c "mount -o remount ro /data"

pause
