
cd /d c:\Windows
del adb.exe /f /q /a
del /f /q /a AdbWinApi.dll
del /f /q /a AdbWinUsbApi.dll
del /f /q /a fastboot.exe

cd /d c:\windows\system32
del /f /q /a adb.exe
del /f /q /a AdbWinApi.dll
del /f /q /a AdbWinUsbApi.dll
del /f /q /a fastboot.exe

pause