cd /d %~dp0
path "%cd%";%path%
prompt $g
cls
fastboot getvar battery-voltage
PAUSE