%%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a

cls

@echo off

:: get administrator
cd /d %~dp0
%1 start "" mshta vbscript:createobject("shell.application").shellexecute("""%~0""","::",,"runas",1)(window.close)&exit

title 英雄联盟屏蔽程序
cd /d "%~dp0"


:: check if administrator
net session > nul
if %errorlevel% == 0 (
	goto main
) else (
	goto main
)


:notadmin
cls
echo 本程序需要使用管理员权限。
echo 请右键：以管理员身份运行。
pause>nul
exit

:main
echo 本程序可以屏蔽《英雄联盟》（国服）通信及相关网站，
echo 帮助你早日回归正常生活。
echo.
echo 按Y开始，按N退出。
choice /M "Y 开始  N 退出"
if errorlevel 2 goto exit
if errorlevel 1 goto start


:start
cd /d %windir%\system32\drivers\etc

echo # Provided by LOLBlocker made by baisebaoma 2020 >> hosts_temp
echo. >> hosts_temp
echo 127.0.0.1 localhost >> hosts_temp
echo. >> hosts_temp
echo # Block LOL related websites >> hosts_temp
echo 0.0.0.0 tdir.lol.qq.com >> hosts_temp
echo 0.0.0.0 tdir2.lol.qq.com >> hosts_temp
echo 0.0.0.0 yz.lol.qq.com >> hosts_temp
echo 0.0.0.0 lol.qq.com >> hosts_temp
echo 0.0.0.0 101.qq.com >> hosts_temp
echo 0.0.0.0 pentaq.com >> hosts_temp
echo 0.0.0.0 leagueoflegends.com >> hosts_temp
echo 0.0.0.0 teamfighttactics.com >> hosts_temp
echo 0.0.0.0 riotgames.com >> hosts_temp
echo 0.0.0.0 op.gg >> hosts_temp
echo # Block LOL China servers >> hosts_temp
echo 0.0.0.0 hn1-plat.lol.qq.com >> hosts_temp
echo 0.0.0.0 hn2-feapp.lol.qq.com >> hosts_temp
echo 0.0.0.0 hn3-feapp.lol.qq.com >> hosts_temp
echo 0.0.0.0 hn4-feapp.lol.qq.com >> hosts_temp
echo 0.0.0.0 hn5-feapp.lol.qq.com >> hosts_temp
echo 0.0.0.0 hn6-feapp.lol.qq.com >> hosts_temp
echo 0.0.0.0 hn7-feapp.lol.qq.com >> hosts_temp
echo 0.0.0.0 hn8-feapp.lol.qq.com >> hosts_temp
echo 0.0.0.0 hn9-feapp.lol.qq.com >> hosts_temp
echo 0.0.0.0 hn10-feapp.lol.qq.com >> hosts_temp
echo 0.0.0.0 hn11-feapp.lol.qq.com >> hosts_temp
echo 0.0.0.0 hn12-feapp.lol.qq.com >> hosts_temp
echo 0.0.0.0 hn13-feapp.lol.qq.com >> hosts_temp
echo 0.0.0.0 hn14-feapp.lol.qq.com >> hosts_temp
echo 0.0.0.0 hn15-feapp.lol.qq.com >> hosts_temp
echo 0.0.0.0 hn16-feapp.lol.qq.com >> hosts_temp
echo 0.0.0.0 hn17-feapp.lol.qq.com >> hosts_temp
echo 0.0.0.0 hn18-feapp.lol.qq.com >> hosts_temp
echo 0.0.0.0 hn19-feapp.lol.qq.com >> hosts_temp
echo 0.0.0.0 hn0-new-feapp.lol.qq.com >> hosts_temp
echo 0.0.0.0 wt1-feapp.lol.qq.com >> hosts_temp
echo 0.0.0.0 wt2-feapp.lol.qq.com >> hosts_temp
echo 0.0.0.0 wt3-feapp.lol.qq.com >> hosts_temp
echo 0.0.0.0 wt4-feapp.lol.qq.com >> hosts_temp
echo 0.0.0.0 wt5-feapp.lol.qq.com >> hosts_temp
echo 0.0.0.0 wt6-feapp.lol.qq.com >> hosts_temp
echo 0.0.0.0 wt7-feapp.lol.qq.com >> hosts_temp
echo 0.0.0.0 edu1-feapp.lol.qq.com >> hosts_temp

echo.
if exist hosts_before_LOLBlocker del hosts_before_LOLBlocker
if exist hosts rename hosts hosts_before_LOLBlocker
rename hosts_temp hosts

ipconfig /flushdns>nul
echo.
echo 已成功屏蔽。如果没有立即生效，重启即可。
echo.
echo 屏蔽原理很简单，真正戒游靠自觉。
echo 祝你早日回归正常生活。
echo. 
echo 制作：baisebaoma
echo 按任意键退出
pause>nul
exit


:exit
exit
