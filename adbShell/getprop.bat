@prompt $g
@echo off
cd /d %~dp0
echo ���ڹر����е�adb����...
adb kill-server
echo ��������adb����...
adb start-server
echo ���ڻ�ȡӲ����Ϣ...
echo �ֻ����к�Ϊ��
adb shell "getprop ro.serialno" 
echo �븴��ճ�����кţ����س�����
set /p sn= 
adb shell getprop >getprop-%sn%.txt
adb kill-server

start getprop-%sn%.txt

Echo 5��󴰿ڽ��Զ��ر�!
ping 127.0.0.1 -n 6 -w 1000 > nul