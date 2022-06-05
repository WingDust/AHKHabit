;增加自动延时启动程序 5000毫秒就是5秒
Sleep, 1000

Run ,emacs,,Hide
Run ,Taskmgr,,Max

; Sleep, 100000000
; 由于 Window 10 不支持直接在开启运行 powershell ,所以使用 ahk 来启动

; RunWait powershell.exe "-File H:/ElectronProject/Autohotkey/AHKHabit/startup.ps1",,hide

; [AHK如何关闭任务管理器](https://blog.csdn.net/liuyukuan/article/details/107387021)
/*
#Persistent
DetectHiddenWindows,on
#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
DetectHiddenWindows,on
  ToolTip,qqqqqqq
;管理员权限运行
Loop, %0%  ; For each parameter:
  {
    param := %A_Index%  ; Fetch the contents of the variable whose name is contained in A_Index.
    params .= A_Space . param
  }
ShellExecute := A_IsUnicode ? "shell32\ShellExecute":"shell32\ShellExecuteA"
 
if not A_IsAdmin
{
    If A_IsCompiled
       DllCall(ShellExecute, uint, 0, str, "RunAs", str, A_ScriptFullPath, str, params , str, A_WorkingDir, int, 1)
    Else
       DllCall(ShellExecute, uint, 0, str, "RunAs", str, A_AhkPath, str, """" . A_ScriptFullPath . """" . A_Space . params, str, A_WorkingDir, int, 1)
    ExitApp
}

winstr=
(LTrim join|
SohuNews.exe
taskmgr.exe

)

win:=StrSplit(winstr,"|")
for k,v in win
{
  GroupAdd,game,% "ahk_exe " v
}

SetTimer, Alert1, 500
return

Alert1:
IfWinExist,ahk_group game
{
   dokill()
}
else
{
  Sleep,1000
}
return
;重启脚本 热键
^!r::reload

dokill()
  {
    global
    for k,v in win
    {
      runwait, %ComSpec% /c taskkill /f /IM %v%, , Hide
    }
  }

*/



#Persistent
SetTitleMatchMode, 2 ;A window's title can contain WinTitle anywhere inside
; GroupAdd, WinMaximize, ahk_class Notepad
GroupAdd, WinMaximize, ahk_exe Taskmgr.exe
GroupAdd, WinMaximize, ahk_class TaskManagerWindow
; GroupAdd, WinMaximize, Google
; GroupAdd, WinMaximize, ahk_exe PDFXEdit.exe
SetTimer, Max, 1000
Return
Max:
IfWinActive, ahk_group WinMaximize
{
  ToolTip, ssss
	WinGet, MinMax, MinMax
	If !MinMax
		WinMaximize
}
Return
 

RunAs,  Administrator
IfWinActive, ahk_group WinMaximize
{
  ToolTip, ssss
	WinGet, MinMax, MinMax
	If !MinMax
		WinMaximize
}
RunAs



