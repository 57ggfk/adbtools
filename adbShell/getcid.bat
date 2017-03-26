@echo off
color 3f
echo         按任意键获取cid，如果失败，说明驱动未安装正常
pause >nul
             @adb shell getprop ro.cid
echo         标记，选择后，右键单击窗口内任意处即复制成功
echo         按任意键退出窗口
pause >nul