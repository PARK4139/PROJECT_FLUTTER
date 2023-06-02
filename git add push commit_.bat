title %~n0
echo "__________________________________________________________________________________________________________________________________________ variable defination
chcp 65001
@echo off
setlocal
for /f "delims=" %%i in ('Powershell.exe get-date -Format 'yyyy MM dd HH mm ss'') do set yyyyMMddHHmmss=%%i
cls
echo "__________________________________________________________________________________________________________________________________________ add
git add *  
git commit -m "%yyyyMMddHHmmss%" 
git push -u origin main  
git status | find "working tree clean" 
explorer https://park4139.github.io/ 


echo %~nx0
timeout 10