@echo off
cd /d %~dp0
echo ************************************
echo ********* ѡ��Ĭ�ϰ�װλ�� *********
echo ********* 0 �Զ�           *********
echo ********* 1 �ֻ��ڴ�       *********
echo ********* 2 SD��           *********
echo ************************************
set /p location=��ѡ������0��1��2��
if %location%==2 echo Ĭ�ϰ�װλ��ΪSD��
if %location%==1 echo Ĭ�ϰ�װλ��Ϊ�ֻ��ڴ�
if %location%==0 echo ��ϵͳѡ��װλ��
adb shell pm setInstallLocation %location%
echo ���óɹ���
PAUSE
adb shell pm getInstallLocation
pause