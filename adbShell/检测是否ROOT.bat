@echo off
color A
cls
if not exist adb.exe goto nf
goto start
:nf
echo 没有找到adb!请联系作者！
pause
exit

:start
adb start-server>nul
cls
echo 请连接手机
adb wait-for-device
echo 已连接！
cls
echo 一、【进行ROOT】
echo.
echo 正在检测是否root
echo 如果您已ROOT，则会需要确认权限-【请解锁屏幕确认权限】
adb wait-for-device root >NUL 2>NUL
IF %ERRORLEVEL% == 1 GOTO :step1
echo 已经root！ 

goto step2

:step1
cls
echo 没有ROOT!

:step2

:exit
PAUSE