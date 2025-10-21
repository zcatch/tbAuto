@echo off
chcp 65001
cd /d "D:\phpstudy_pro\WWW\coin11-tb"
title 淘宝签到任务

echo ========================================
echo           淘宝签到任务
echo ========================================
echo.

echo 正在检查设备连接状态...
adb devices
echo.

echo 正在重启ADB服务...
adb kill-server
timeout /t 2 /nobreak >nul
adb start-server
timeout /t 3 /nobreak >nul

echo 重新检查设备连接...
adb devices
echo.

echo 如果设备列表为空，请：
echo 1. 检查手机是否已连接USB
echo 2. 确认已开启USB调试
echo 3. 重新授权设备
echo.
pause

echo 正在运行淘宝签到任务...
py -c "exec(open('淘宝签到任务.py', encoding='utf-8').read())"
pause
