@echo off
chcp 65001
cd /d "D:\phpstudy_pro\WWW\coin11-tb"
echo 正在运行淘宝618活动任务...
py -c "exec(open('淘宝618活动.py', encoding='utf-8').read())"
pause
