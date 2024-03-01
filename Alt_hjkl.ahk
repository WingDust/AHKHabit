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
~CapsLock & -::SendInput,{Volume_Down}                                                       
~CapsLock & =::SendInput,{Volume_Up}                                                       
~CapsLock & 0::SendInput,{Volume_Mute}                                                       

;CapsLock::Send, {ESC} 
;CapsLock::Esc

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


;; win
RWin::AppsKey
return

;f7::r
;return

RShift::Up
; Send {Up}   ;;输入 上 键
return
