path "D:\Program Files\����ˢ��\tools";%path%
set file="%~dpnx1"
prompt $G
cd /d "%1"
cls
@echo ��ǰĿ¼��cd  =%cd%
@echo ��ǰ�ļ���file=%file%
@echo.
adb shell "ls /sdcard/360/systemapp" > applist.txt
@cmd