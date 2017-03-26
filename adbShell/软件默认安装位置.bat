@echo off
cd /d %~dp0
echo ************************************
echo ********* 选择默认安装位置 *********
echo ********* 0 自动           *********
echo ********* 1 手机内存       *********
echo ********* 2 SD卡           *********
echo ************************************
set /p location=请选择数字0，1，2：
if %location%==2 echo 默认安装位置为SD卡
if %location%==1 echo 默认安装位置为手机内存
if %location%==0 echo 由系统选择安装位置
adb shell pm setInstallLocation %location%
echo 设置成功！
PAUSE
adb shell pm getInstallLocation
pause