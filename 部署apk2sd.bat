path "D:\Program Files\完美刷机\tools";%path%
set file="%~dpnx1"
prompt $G
cd /d "%1"
cls
@echo 当前目录：cd  =%cd%
@echo 当前文件：file=%file%
copy "%~nx1" "%temp%\tmp.apk"
adb install -s -r "%temp%\tmp.apk"
del "%temp%\tmp.apk"
@echo.
@ping 127.0.0.1 -n 6 -w 1000 > nul