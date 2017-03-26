echo off
cd /d %~dp0
path "%cd%";%path%
cd /d "%~dp1"
prompt $g
cls

fastboot oem rebootRUU
@ping 127.0.0.1 -n 6 -w 1000 > nul
fastboot flash zip "%~nx1"

@ping 127.0.0.1 -n 6 -w 1000 > nul

fastboot reboot-bootloader
pause
fastboot reboot
pause
