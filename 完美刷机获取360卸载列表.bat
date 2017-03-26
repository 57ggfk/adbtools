path "D:\Program Files\完美刷机\tools";%path%
set file="%~dpnx1"
prompt $G
cd /d "%1"
cls
@echo 当前目录：cd  =%cd%
@echo 当前文件：file=%file%
@echo.
adb shell "ls /sdcard/360/systemapp" > applist.txt
@cmd