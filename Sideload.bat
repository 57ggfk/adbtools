prompt $G
@ECHO on
cd /d "%~dp1"
path "D:\Program Files\����ˢ��\tools";%path%
adb sideload "%~nx1"
echo ��ϲ����ROM�Ѿ����͵��ֻ���
@ping 127.0.0.1 -n 2 -w 100 > nul

EXIT
