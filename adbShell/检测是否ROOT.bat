@echo off
color A
cls
if not exist adb.exe goto nf
goto start
:nf
echo û���ҵ�adb!����ϵ���ߣ�
pause
exit

:start
adb start-server>nul
cls
echo �������ֻ�
adb wait-for-device
echo �����ӣ�
cls
echo һ��������ROOT��
echo.
echo ���ڼ���Ƿ�root
echo �������ROOT�������Ҫȷ��Ȩ��-���������Ļȷ��Ȩ�ޡ�
adb wait-for-device root >NUL 2>NUL
IF %ERRORLEVEL% == 1 GOTO :step1
echo �Ѿ�root�� 

goto step2

:step1
cls
echo û��ROOT!

:step2

:exit
PAUSE