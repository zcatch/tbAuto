@echo off
chcp 65001
cd /d "D:\phpstudy_pro\WWW\coin11-tb"
echo 正在运行支付宝农场任务...
py -c "exec(open('支付宝农场.py', encoding='utf-8').read())"
pause
