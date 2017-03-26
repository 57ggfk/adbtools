path "D:\Program Files\完美刷机\tools";%path%
set file="%~dpnx1"
prompt $G
title HTC官解--完美解锁
cd /d "%1"
cls
@echo 当前目录：cd  =%cd%
@echo 当前文件：file=%file%
@echo.
start explorer "http://www.htcdev.com/"
pause
fastboot oem get_identifier_token
del Unlock_code.bin
pause
start explorer "http://www.htcdev.com/bootloader/unlock-instructions/page-3"
pause
fastboot flash unlocktoken Unlock_code.bin

@cmd