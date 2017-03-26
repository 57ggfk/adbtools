cd /d %~dp0
path "%cd%";%path%
prompt $g
cls
@ echo off
: start
@fastboot devices
@fastboot getvar battery-voltage
ping /n 6 localhost> nul
@fastboot reboot-bootloader > nul
echo .
echo.
goto start

