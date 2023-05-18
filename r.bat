@echo off
title 获取管理员权限
mode con cols=100 lines=20
color 3f

:: 开始获取管理员权限
setlocal
set uac=~uac_permission_tmp_%random%
md "%SystemRoot%\system32\%uac%" 2>nul
if %errorlevel%==0 ( rd "%SystemRoot%\system32\%uac%" >nul 2>nul ) else (
    echo set uac = CreateObject^("Shell.Application"^)>"%temp%\%uac%.vbs"
    echo uac.ShellExecute "%~s0","","","runas",1 >>"%temp%\%uac%.vbs"
    echo WScript.Quit >>"%temp%\%uac%.vbs"
    "%temp%\%uac%.vbs" /f
    del /f /q "%temp%\%uac%.vbs" & exit )
endlocal
:: 完成获取,下面可以开始写你自己的代码了

echo.
echo 原理：先尝试在系统目录下临时新建一个文件夹，若已获取管理员权限或是运行在XP等不需要管理员权限的
echo       老系统时，是可以新建成功的，此时只需删除这个临时新建的文件夹就好了，否则通过创建一个临时
echo       vbs脚本获取管理员权限，然后再删除这个临时vbs脚本文件。
echo.
echo 提示：当获取管理员目录后，你的批处理运行目录会发生变化，为保证目录准确，
echo       可通过 cd 切换目录,例“cd /d %%~dp0”切换回批处理所在目录
echo.
echo 当前运行目录： %cd%\
echo 批处理所在目录：%~dp0
echo.
echo 例：切换回批处理所在目录
echo cd /d %%~dp0
echo.

cd /d %~dp0

echo 当前运行目录： %cd%\
echo 批处理所在目录：%~dp0	
start /d "H:/ElectronProject/Autohotkey/AHKHabit/maxallwindows.exe" maxallwindows.exe

pause
exit
