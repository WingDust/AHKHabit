;;https://www.autohotkey.com/boards/viewtopic.php?t=40641
;WinGet, List, List

;Loop % List

;   WinMaximize % "ahk_id " List%A_Index%

;makeH(){
;windowHandleId := WinExist("ahk_exe chrome.exe")
;}


;#Persistent 是一个 AutoHotkey 指令，可以用来让脚本一直运行，即使它没有热键、热字符串、OnMessage() 或 Gui12。如果你不使用这个指令，那么脚本在执行完所有命令后就会退出12。
;#SingleInstance 也是一个 AutoHotkey 指令，可以用来控制脚本的实例数123。如果你不想让同一个脚本同时运行多个实例，你可以使用这个指令来防止重复启动123。
;#SingleInstance 指令有几个参数，可以用来改变它的行为123。例如，你可以用 #SingleInstance Force 参数来强制替换已经运行的实例，而不是弹出对话框让你选择123。

;#Persistent
#SingleInstance, Force
WinMaximize,A
;WinSet,Transparent,200,A
;WinSet,Transparent,200,A

/* For k, v in ["cmd" , "notepad"] */

/* { */
/* 	WinGet, win, List, ahk_exe %v%.exe */
/* 	Loop, %win% */
/* 	{ */
/* 		WinGet, _IsMax, MinMax, % wTitle := "ahk_id " win%A_Index% */
/* 		If (_IsMax = 1) */
/* 			Continue */
/* 			WinActivate, % wTitle */
/* 			WinMove, %wTitle%,, 0, 0, 1920, 1080 */
/* 	} */
/* } */
/* return */
