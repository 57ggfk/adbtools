cd /d %~dp0
path %path%;"%cd%\cmd"
fastboot -w
::fastboot reboot
PAUSE