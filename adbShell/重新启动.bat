@prompt $g
cd /d %~dp0
path "%cd%";%path%
@echo off
title reboot
color 0A
cls
echo ������Ҫж�ص��������
echo 1. ��������
echo 2. ����������recovery
echo 3. ����������bootloader
SET /P menuna=��ѡ���س���
IF %menuna%==1 adb reboot
IF %menuna%==2 adb reboot recovery
IF %menuna%==3 adb reboot bootloader
echo ����������������ȴ�...
pause

