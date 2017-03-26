cd /d %~dp0
path %path%;"%cd%\cmd"

fastboot getvar cid
fastboot getvar mid

fastboot oem writecid 11111111

::fastboot reboot-bootloader

fastboot getvar cid
fastboot getvar mid

PAUSE