@echo off


For %%a In (C D E F G H I J K L M N O P Q R S T U V W X Y Z) Do (
	fsutil fsinfo drivetype %%a: |find /i "可移动驱动器" && (
		For /f "delims=" %%i in ('dir %%a:\ /s /b /ah') do attrib "%%i" /s /d -s -h -a -r >nul 2>nul
	) >nul 2>nul
)
echo. & pause

echo 恢复U盘所有文件夹完毕!!
echo. & pause