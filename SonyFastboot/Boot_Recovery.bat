:: ��ȡbat�ļ�����Ŀ¼
cd /d %~dp0
fastboot devices
fastboot boot %1
@ping 127.0.0.1 -n 6 -w 1000 > nul