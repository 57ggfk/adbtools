@cd /d %~dp0
:: 获取bat文件所在目录
@fastboot devices

@fastboot  flash boot "%~f1"
@ping 127.0.0.1 -n 6 -w 1000 > nul