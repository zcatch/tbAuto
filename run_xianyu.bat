@echo off
chcp 65001
cd /d "D:\phpstudy_pro\WWW\coin11-tb"
echo 正在运行闲鱼任务...
py -c "exec(open('闲鱼任务.py', encoding='utf-8').read())"
pause
