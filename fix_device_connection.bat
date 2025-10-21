@echo off
chcp 65001
title 设备连接修复工具
color 0E

echo ========================================
echo           设备连接修复工具
echo ========================================
echo.

:check_connection
echo 正在检查设备连接状态...
adb devices
echo.

for /f "tokens=*" %%i in ('adb devices ^| findstr "device"') do (
    if not "%%i"=="List of devices attached" (
        echo 发现设备: %%i
        goto :device_found
    )
)

echo ❌ 未检测到设备！
echo.
echo 请按以下步骤操作：
echo.
echo 1. 确保手机已通过USB连接到电脑
echo 2. 确保USB线支持数据传输（不是仅充电线）
echo 3. 在手机上开启开发者选项和USB调试
echo 4. 重新连接USB线，授权调试
echo.
echo 按任意键重新检查...
pause
goto :check_connection

:device_found
echo.
echo 正在重启ADB服务...
adb kill-server
timeout /t 2 /nobreak >nul
adb start-server
timeout /t 3 /nobreak >nul

echo 重新检查设备连接...
adb devices
echo.

echo 正在测试uiautomator2连接...
py -c "import uiautomator2 as u2; d = u2.connect(); print('uiautomator2连接成功'); print('设备信息:', d.info)"
echo.

echo ✅ 设备连接正常！
echo 现在可以运行自动化任务了。
echo.
pause
