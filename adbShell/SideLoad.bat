prompt $G
@ECHO on
cd /d "%~dp1"
path "%~dp0";%path%
adb sideload "%~nx1"
echo 恭喜您，ROM已经传送到手机。
@ping 127.0.0.1 -n 2 -w 100 > nul

EXIT
