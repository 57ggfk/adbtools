cd /d %~dp0
path %path%;"%cd%\cmd"
fastboot devices
fastboot erase recovery
@ping 127.0.0.1 -n 6 -w 1000 > nul