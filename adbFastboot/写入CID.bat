cd /d %~dp0
path %path%;"%cd%\cmd"

fastboot getvar cid
fastboot oem readcid
fastboot getvar mid
pause
fastboot oem writecid 11111111
::fastboot oem writemid PG******
pause
fastboot reboot-bootloader
pause
fastboot getvar cid
fastboot getvar mid

PAUSE