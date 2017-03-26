@prompt $g
cd /d %~dp0
path "%cd%";%path%
@echo off
title reboot
color 0A
cls
echo 请输入要卸载的软件类型
echo 1. 重新启动
echo 2. 重新启动到recovery
echo 3. 重新启动到bootloader
SET /P menuna=请选择后回车：
IF %menuna%==1 adb reboot
IF %menuna%==2 adb reboot recovery
IF %menuna%==3 adb reboot bootloader
echo 正在重新启动，请等待...
pause

