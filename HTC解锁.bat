path "D:\Program Files\����ˢ��\tools";%path%
set file="%~dpnx1"
prompt $G
title HTC�ٽ�--��������
cd /d "%1"
cls
@echo ��ǰĿ¼��cd  =%cd%
@echo ��ǰ�ļ���file=%file%
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