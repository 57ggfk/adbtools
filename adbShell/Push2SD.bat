@prompt $G
path "D:\Program Files\ÍêÃÀË¢»ú\tools";%path%
cd /d "%~dp1"
set file="%~nx1"


adb push %file% /sdcard/%file%
adb shell ls /sdcard/%file%
PAUSE