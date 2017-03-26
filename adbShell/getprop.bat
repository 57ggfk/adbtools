@prompt $g
@echo off
cd /d %~dp0
echo 正在关闭运行的adb服务...
adb kill-server
echo 正在启动adb服务...
adb start-server
echo 正在获取硬件信息...
echo 手机序列号为：
adb shell "getprop ro.serialno" 
echo 请复制粘贴序列号，按回车继续
set /p sn= 
adb shell getprop >getprop-%sn%.txt
adb kill-server

start getprop-%sn%.txt

Echo 5秒后窗口将自动关闭!
ping 127.0.0.1 -n 6 -w 1000 > nul