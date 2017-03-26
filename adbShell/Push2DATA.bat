@prompt $G
path "D:\Program Files\ÍêÃÀË¢»ú\tools";%path%
cd /d "%~dp1"
set file="%~nx1"


adb push %file% /data/local/tmp/%file%
adb shell ls /data/local/tmp/%file%
PAUSE