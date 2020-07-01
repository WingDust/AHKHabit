#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;; 窗口组要定义在开头才有效

SetTitleMatchMode, 2
GroupAdd,CmdWindow, ahk_exe cmd.exe, , ,nvim

GroupAdd,ApptoEnter , ahk_exe atom.exe
;GroupAdd,ApptoEnter , ahk_exe emacs.exe
GroupAdd,ApptoEnter , ahk_exe Code.exe
GroupAdd,ApptoEnter , ahk_exe gVimPortable.exe
GroupAdd,ApptoEnter , ahk_exe cmd.exe
GroupAdd,ApptoEnter , ahk_exe nvim.exe
GroupAdd,ApptoEnter , ahk_exe nvim-qt.exe
GroupAdd,ApptoEnter , ahk_exe BaiduPCS-Go.exe
GroupAdd,ApptoEnter , ahk_exe ConEmu64.exe
GroupAdd,ApptoEnter , ahk_exe Arch.exe
GroupAdd,ApptoEnter , ahk_exe gvim.exe
GroupAdd,ApptoEnter , ahk_exe Listary.exe
GroupAdd,ApptoEnter , ahk_exe AutoHotkey.exe
GroupAdd,ApptoEnter , ahk_exe WindowsTerminal.exe
GroupAdd,ApptoEnter , ahk_exe pwsh.exe
GroupAdd,ApptoEnter , ahk_exe SearchApp.exe


GroupAdd,Quit , ahk_exe  cmd.exe
GroupAdd,Quit , ahk_exe  ConEmu64.exe
GroupAdd,Quit , ahk_exe  pwsh.exe
GroupAdd,Quit , ahk_exe  WindowsTerminal.exe
GroupAdd,Quit , ahk_exe  Arch.exe
GroupAdd,Quit  , ahk_exe BaiduPCS-Go.exe

GroupAdd, UpandDown, ahk_exe OpenWith.exe


GroupAdd, Arrow, ahk_exe PotPlayerMini64.exe

return



;启动Cmder.exe 同一个键是有先后触发的顺序的 
~AppsKey & 1::
;ToolTip 1
Run E:\cmder\Cmder.exe ,C:/Users/Administrator/Desktop/
return



#IfWinActive ahk_group ApptoEnter
AppsKey::
Send {Enter}
Return
#IfWinActive

#IfWinActive ahk_exe emacs.exe
AppsKey::Enter
Return
#IfWinActive

/*
#IfWinActive  emacs
AppsKey::Enter
Return
Escape::Escape
Return
#IfWinActive
*/

#IfWinActive  Terminal
AppsKey::Send,{Enter}
Return
Escape::Send,{Escape}
Return
#IfWinActive

;;#IfWinActive  ahk_exe Explorer.EXE
;;AppsKey::Send ,{AppsKey}
;;Return
;;#IfWinActive

;;#IfWinActive  Everything
;;AppsKey::Send ,{AppsKey}
;;Return
;;#IfWinActive


#IfWinActive,ahk_exe nvim-qt.exe
~^\ Up::
Send ^n
Return

#IfWinActive, ahk_group CmdWindow
^w::
Send ^{Backspace}
Return

#IfWinActive, ahk_exe cmd.exe
~^\::
Send ^n

Return
#IfWinActive

#IfWinActive, ahk_group Quit
^q::
Send exit{Enter}
Return
#IfWinActive

#IfWinActive, ahk_exe cmd.exe
^p::
Send {Up}

Return
#IfWinActive

#IfWinActive, ahk_exe cmd.exe
^n::
Send {Down}

Return
#IfWinActive

~^[::
Send {Shift} 
Send {Shift} 
Return


;;#IfWinActive ahk_class CabinetWClass
;;^m::
;;	ControlGetText, thispath, Edit1, ahk_class CabinetWClass
;;	;ToolTip %thispath%,0,0,2
;;	Run, cmd /k, % thispath
;;#IfWinActive



#IfWinActive, ahk_group UpandDown
j::Down
#IfWinActive

#IfWinActive, ahk_group UpandDown
k::Up
#IfWinActive

#IfWinActive, ahk_group UpandDown
AppsKey::Enter
#IfWinActive











;;/*
;#IfWinActive,ahk_exe Code.exe
;$+!f::
;    ; ToolTip,OutputVar
;    WinGet, OutputVar ,ID,ahk_exe atom.exe
;    ; ToolTip,%OutputVar%
;    WinActivate, ahk_id %OutputVar%
;    ; Send {Ctrl Alt v}
;    Send ^!v
;    ; Send AltTab
;    WinGet, OutputVar2 ,ID,ahk_exe Code.exe
;    ; ToolTip,OutputVar2
;    WinActivate,ahk_id %OutputVar2%
;return
;*/


;/*实现在 imageGlass 中vim式的移动来达到翻页的效果
#IfWinActive, ahk_exe imageGlass.exe
h::Left
Return

#IfWinActive, ahk_exe imageGlass.exe
l::Right
Return

#IfWinActive, ahk_exe imageGlass.exe
j::Down
Return
#IfWinActive, ahk_exe imageGlass.exe
k::Up
Return
*/

;/* 在Appskey键下能使用vim式按键移动
#IfWinExist, ahk_class #32768
j:: Send,{Down}
Return

#IfWinExist, ahk_class #32768
k::Up
Return

#IfWinExist, ahk_class #32768
h::Left
Return

#IfWinExist, ahk_class #32768
l::Right
Return


#IfWinExist, ahk_class #32768
AppsKey::Enter
Return
*/

/* 在Appskey键下能使用vim式按键移动
#IfWinActive ahk_class Progman
j::Down
Return

#IfWinActive ahk_class Progman
k::Up
Return

#IfWinActive ahk_class Progman
h::Left
Return

#IfWinActive ahk_class Progman
l::Right
Return


*/
;/* 在Appskey键下能使用vim式按键移动
;; #IfWinExist, VcXsrv X
;; j::Down
;; Return
;; 
;; #IfWinExist, VcXsrv X
;; k::Up
;; Return
;; 
;; #IfWinExist, VcXsrv X
;; h::Left
;; Return
;; 
;; #IfWinExist, VcXsrv X
;; l::Right
;; Return


;;#IfWinActive VcXsrv X
;;AppsKey::Enter
;;Return
*/

;/*
;;#If WinActive("ahk_class SysListView32")
;;k::Up
;;Return
;;j::Down
;;Return
;;h::Left
;;Return
;;l::Right
;;Return
;;#If
*/

;/*
#IfWinActive 哔哩哔哩动画
^s::
  Click , 1640,1060
  Return
F2::
  Click ,404,83
  Return
#IfWinActive

*/

