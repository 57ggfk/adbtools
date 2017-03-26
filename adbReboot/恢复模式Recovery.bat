@ECHO OFF
color b
Echo 正在进入恢复模式，请稍等.....
echo.
echo 如果没有正常进入恢复模式，请检查手机设置-应用程序-开发-USB调试(勾选)。
echo.
adb reboot recovery
echo.
echo 已经进入恢复模式!
echo.
Echo 10秒后窗口将自动关闭!
for /l %%a in (10 -1 1) do (
title 倒计时 %%a 秒后自动关闭窗口...
if exist "%temp%\#" (
del "%temp%\#"
exit
)
ping -n 2 127.1>nul
)