@ECHO OFF
color b
Echo �������������ֻ������Ե�.....
echo.
echo ���û�����������ֻ��������ֻ�����-Ӧ�ó���-����-USB����(��ѡ)��
echo.
adb reboot 
echo.
echo �Ѿ����������ֻ�!
echo.
Echo 10��󴰿ڽ��Զ��ر�!
for /l %%a in (10 -1 1) do (
title ����ʱ %%a ����Զ��رմ���...
if exist "%temp%\#" (
del "%temp%\#"
exit
)
ping -n 2 127.1>nul
)