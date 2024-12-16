#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;; alt键
!k::  
Send {Up}   ;;输入 上 键
return
!j::
Send {Down}
return
!h::
Send {Left}
return
!l::
Send {Right}
return

;; CapsLock 键
; ~CapsLock & -::SendInput,{Volume_Down}                                                       
; ~CapsLock & =::SendInput,{Volume_Up}                                                       
; ~CapsLock & 0::SendInput,{Volume_Mute}                                                       
; ~CapsLock & m::SendInput,{AppsKey}                                                       
; ~CapsLock & 1::SendInput,{F1}
; ~CapsLock & 2::SendInput,{F2}
; ~CapsLock & 3::SendInput,{F3}
; ~CapsLock & 4::SendInput,{F4}
; ~CapsLock & 5::SendInput,{F5}
; ~CapsLock & 6::SendInput,{F6}
; ~CapsLock & 7::SendInput,{F7}
; ~CapsLock & 8::SendInput,{F8}
; ~CapsLock & 9::SendInput,{F9}
RAlt::AppsKey

;CapsLock::Send, {ESC} 
; CapsLock::Esc
; return
; ^j::Enter
; return
; ^h::BackSpace
; return

; ^q::!F4 
; ; Send {!F4} 
; return
; 


;; https://www.autohotkey.com/boards/viewtopic.php?t=44888
$^q::
WinGetTitle, title_before, A
Send, ^q
Sleep, 100 ; Adjust for your needs, might need to be longer
WinGetTitle, title_after, A
if (title_before = title_after)
Send, !{F4}
Return



CapsLock & i::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {Home}                                                 ;|
    else                                                             ;|
        Send, +{Home}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{Home}                                                ;|
    else                                                             ;|
        Send, +^{Home}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & o::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {End}                                                  ;|
    else                                                             ;|
        Send, +{End}                                                 ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{End}                                                 ;|
    else                                                             ;|
        Send, +^{End}                                                ;|
    return                                                           ;|
}                                                                    ;|
return

;                      CapsLock Page Navigator                       ;|
;-----------------------------------o---------------------------------o
;                      CapsLock + u |  PageUp                        ;|
;                      CapsLock + p |  PageDown                      ;|
;                      Ctrl, Alt Compatible                          ;|
;-----------------------------------o---------------------------------o
CapsLock & u::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {PgUp}                                                 ;|
    else                                                             ;|
        Send, +{PgUp}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{PgUp}                                                ;|
    else                                                             ;|
        Send, +^{PgUp}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & p::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {PgDn}                                                 ;|
    else                                                             ;|
        Send, +{PgDn}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{PgDn}                                                ;|
    else                                                             ;|
        Send, +^{PgDn}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;


; ctrl f2
;Quant整理
;2017年1月6日11:39:31
^f2::
Send ^c
Content:=Clipboard
FileAppend, %ClipboardAll%, temp.clip
Loop { 
	FileReadLine, line, temp.clip, %A_Index% 
	if ErrorLevel
		break 
	c := RegExMatch(line,"SourceURL:(.*)$", url)
	if (c = 1)
	{
	Clipboard= [[%url1%][%Content%]]   ;注意url后面的数字1
	ToolTip 剪贴板内容为：`n%Clipboard%
	Sleep,3000
	ToolTip
	break
	}
}
FileDelete, temp.clip
return

;Quant整理
;2017年1月6日11:39:31
^f1::
Send ^c
Content:=Clipboard
FileAppend, %ClipboardAll%, temp.clip
Loop { 
	FileReadLine, line, temp.clip, %A_Index% 
	if ErrorLevel
		break 
	c := RegExMatch(line,"SourceURL:(.*)$", url)
	if (c = 1)
	{
	Clipboard= [%Content%](%url1%)    ;注意url后面的数字1
	ToolTip 剪贴板内容为：`n%Clipboard%
	Sleep,3000
	ToolTip
	break
	}
}
FileDelete, temp.clip
return

Shift & Enter::
    {
        Sleep 1
        MouseClick, left
        ;Run click.exe,Hide
        }
    ; MouseClick, left
return

; RShift & Enter:: Click
; RShift & Right:: Click
; return 


;; win
RWin::AppsKey
return

;f7::r
;return

RShift::Up
; Send {Up}   ;;输入 上 键
return



; ` & 1::
; {WinActive "ahk_exe quark"}
; return

;Enter::Send \
; ~Enter::Send \
;return
; Shift & Enter::Send |
; return

#z::  ; 定义热键为 Win + z
WinGetActiveTitle, var_title  ; 获取当前激活的窗口标题
CenterWindow(var_title)  ; 调用 CenterWindow 函数来居中窗口
return

CenterWindow(WinTitle) {  ; 定义 CenterWindow 函数
    WinGetPos,,, Width, Height, %WinTitle%  ; 获取窗口的宽度和高度
    WinMove, %WinTitle%,, (A_ScreenWidth/2)-(Width/2), (A_ScreenHeight/2)-(Height/2)  ; 计算并设置窗口的位置，使其居中
}


; ahk_exe powershell.exe
; #IfWinActive ahk_group ApptoEnter
; ^1::
; Click 29,19
; return
;
; #IfWinActive ahk_group ApptoEnter
; ^3::
; Click 173,26
; return
