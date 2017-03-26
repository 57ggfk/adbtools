@prompt $g
cd /d %~dp0
path "%cd%";%path%
1.@echo off
2.title install
3.color 0A
4.echo 正准备安装
5.echo "%~f1"
6.cd "%~dp0"
7.cd ..
8.adb wait-for-device
9.adb install -r "%~f1"
10.pause
11.安装完毕
