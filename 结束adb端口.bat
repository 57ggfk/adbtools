@echo off
@prompt $G
:start
echo   �����
echo.
echo   Э��   ���ص�ַ               �ⲿ��ַ               ״̬            PID
netstat -ano | findstr "5037"  
echo.
set /p PID=�������ѯ����PID��

TASKLIST | findstr "%PID%"

pause
goto start