@echo off
@prompt $G
:start
echo   活动连接
echo.
echo   协议   本地地址               外部地址               状态            PID
netstat -ano | findstr "5037"  
echo.
set /p PID=请输入查询到的PID：

TASKLIST | findstr "%PID%"

pause
goto start