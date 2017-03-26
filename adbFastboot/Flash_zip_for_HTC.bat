cd /d %~dp0
path "%cd%";%path%
cd /d "%~dp1"
prompt $g
cls
@fastboot flash zip "%~f1"
@ping 127.0.0.1 -n 6 -w 1000 > nul
@fastboot reboot-bootloader