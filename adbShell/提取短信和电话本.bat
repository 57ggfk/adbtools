echo off
@prompt $g
cd /d %~dp0
path "%cd%";%path%
cls
echo.
echo 1. /data/data
echo 2. /dbdata
echo.
set /p select=如果是dbdata位置请选2:
if %select%==2 goto :dbdata

:android
set CONTACTS=/data/data/com.android.providers.contacts/contacts2.db
set MMSSMS=/data/data/com.android.providers.telephony/databases/mmssms.db

adb shell su -c "cp %CONTACTS% /data/local/tmp"
adb shell su -c "cp %MMSSMS% /data/local/tmp"
goto :pull

:dbdata
REM I9000 etc.
set CONTACTS=/dbdata/databases/com.android.providers.contacts/contacts2.db
set MMSSMS=/dbdata/databases/com.android.providers.telephony/mmssms.db

echo %CONTACTS%
adb shell su -c "cat %CONTACTS% > /data/local/tmp/contacts2.db"
echo %MMSSMS%
adb shell su -c "cat %MMSSMS% > /data/local/tmp/mmssms.db"

:pull
ECHO 备份文件到本地
adb pull /data/local/tmp/contacts2.db .%CONTACTS%
adb pull /data/local/tmp/mmssms.db .%MMSSMS%.db
PAUSE