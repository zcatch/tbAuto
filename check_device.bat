@echo off
chcp 65001
title 设备连接检查
color 0E

echo ========================================
echo           设备连接检查工具
echo ========================================
echo.

echo 正在检查ADB设备连接状态...
echo.
adb devices
echo.

echo 正在测试uiautomator2连接...
py -c "import uiautomator2 as u2; d = u2.connect(); print('✅ uiautomator2连接成功'); print('设备信息:', d.info)"
echo.

echo ========================================
echo 如果看到设备列表为空，请检查：
echo 1. 手机是否已连接USB
echo 2. 是否已开启USB调试
echo 3. 是否已授权调试
echo ========================================
pause
