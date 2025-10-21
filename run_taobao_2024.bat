@echo off
chcp 65001
cd /d "D:\phpstudy_pro\WWW\coin11-tb"
echo 正在运行2024淘宝双11任务...
py -c "exec(open('2024淘宝双11.py', encoding='utf-8').read())"
pause
