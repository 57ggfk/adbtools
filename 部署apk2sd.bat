path "D:\Program Files\����ˢ��\tools";%path%
set file="%~dpnx1"
prompt $G
cd /d "%1"
cls
@echo ��ǰĿ¼��cd  =%cd%
@echo ��ǰ�ļ���file=%file%
copy "%~nx1" "%temp%\tmp.apk"
adb install -s -r "%temp%\tmp.apk"
del "%temp%\tmp.apk"
@echo.
@ping 127.0.0.1 -n 6 -w 1000 > nul