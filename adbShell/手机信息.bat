@echo off
cd /d %~dp0
adb kill-server
adb start-server
adb wait-for-device 
echo �ֻ��ͺţ�
adb shell getprop ro.product.model
echo �ֻ����أ�
adb shell getprop ro.product.brand
echo �豸���ƣ�
adb shell getprop ro.product.device

echo �ֻ����ţ�
adb shell getprop ro.serialno
echo CID�ţ�
adb shell getprop ro.cid
ECHO �������ţ�
adb shell getprop ro.hardware
echo SPL��Hboot���汾��
adb shell getprop ro.bootloader
echo ������
adb shell getprop ro.baseband
echo �汾���ţ��ڲ��汾��
adb shell getprop ro.build.id
echo ��׿�汾��
adb shell getprop ro.build.version.release
echo ***************
PAUSE