@prompt $G
path "D:\Program Files\ÍêÃÀË¢»ú\tools";%path%
cd /d "%~dp1"
set file="%~nx1"

move %file% rom.zip
echo %file% >filename.txt
adb push rom.zip /sdcard/rom.zip
adb shell ls /sdcard/rom.zip
move rom.zip %file%
del filename.txt
PAUSE