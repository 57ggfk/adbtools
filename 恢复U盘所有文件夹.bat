@echo off


For %%a In (C D E F G H I J K L M N O P Q R S T U V W X Y Z) Do (
	fsutil fsinfo drivetype %%a: |find /i "���ƶ�������" && (
		For /f "delims=" %%i in ('dir %%a:\ /s /b /ah') do attrib "%%i" /s /d -s -h -a -r >nul 2>nul
	) >nul 2>nul
)
echo. & pause

echo �ָ�U�������ļ������!!
echo. & pause