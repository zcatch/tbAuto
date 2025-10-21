@echo off
chcp 65001
title 淘宝自动化任务菜单
color 0A

:menu
cls
echo ========================================
echo           淘宝自动化任务菜单
echo ========================================
echo.
echo 1. 淘宝签到任务
echo 2. 淘金币任务  
echo 3. 淘宝芭芭农场任务
echo 4. 2024淘宝双11任务
echo 5. 2025淘宝双11任务
echo 6. 淘宝618活动任务
echo 7. 闲鱼任务
echo 8. 支付宝农场任务
echo 9. 退出
echo.
echo ========================================
set /p choice=请选择要运行的任务 (1-9): 

if "%choice%"=="1" (
    echo 正在启动淘宝签到任务...
    call run_taobao_signin.bat
    goto menu
)
if "%choice%"=="2" (
    echo 正在启动淘金币任务...
    call run_taobao_coin.bat
    goto menu
)
if "%choice%"=="3" (
    echo 正在启动淘宝芭芭农场任务...
    call run_taobao_farm.bat
    goto menu
)
if "%choice%"=="4" (
    echo 正在启动2024淘宝双11任务...
    call run_taobao_2024.bat
    goto menu
)
if "%choice%"=="5" (
    echo 正在启动2025淘宝双11任务...
    call run_taobao_2025.bat
    goto menu
)
if "%choice%"=="6" (
    echo 正在启动淘宝618活动任务...
    call run_taobao_618.bat
    goto menu
)
if "%choice%"=="7" (
    echo 正在启动闲鱼任务...
    call run_xianyu.bat
    goto menu
)
if "%choice%"=="8" (
    echo 正在启动支付宝农场任务...
    call run_alipay_farm.bat
    goto menu
)
if "%choice%"=="9" (
    echo 退出程序...
    exit
)

echo 无效选择，请重新输入...
pause
goto menu
