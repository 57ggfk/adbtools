echo off
cd /d %~dp0
path "%cd%";%path%
cd /d "%~dp1"
prompt $g
cls

fastboot oem rebootRUU
@ping 127.0.0.1 -n 6 -w 1000 > nul
fastboot flash zip "%~nx1"

echo.
echo 如果发现以下文字请按任意键继续,否则关闭
echo *******************************************************************************
echo ** FAILED (remote: 90 hboot pre-update! please flush image again immediately)**
echo *******************************************************************************
pause

@ping 127.0.0.1 -n 6 -w 1000 > nul
fastboot flash zip "%~nx1"
pause
fastboot reboot-bootloader
pause
fastboot reboot
pause
