cd /d %~dp0
adb push flash_image /data/local/tmp/flash_image
adb shell push "%1" /sdcard/Recovery.img
adb shell mount /sdcard/
adb shell /data/local/tmp/flash_image recovery /sdcard/Recovery.img
set /p act=�Ƿ�������Reocvery��1.�� 2.��
if act=1 adb reboot recovery
PAUSE