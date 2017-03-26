@echo off
cd /d %~dp0
adb kill-server
adb start-server
adb wait-for-device 
echo 手机型号：
adb shell getprop ro.product.model
echo 手机产地：
adb shell getprop ro.product.brand
echo 设备名称：
adb shell getprop ro.product.device

echo 手机串号：
adb shell getprop ro.serialno
echo CID号：
adb shell getprop ro.cid
ECHO 开发代号：
adb shell getprop ro.hardware
echo SPL（Hboot）版本：
adb shell getprop ro.bootloader
echo 基带：
adb shell getprop ro.baseband
echo 版本代号，内部版本号
adb shell getprop ro.build.id
echo 安卓版本：
adb shell getprop ro.build.version.release
echo ***************
PAUSE