#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

!k::  ;; !->alt键   k->字母键k
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

CapsLock & -::SendInput,{Volume_Down}                                                       
CapsLock & =::SendInput,{Volume_Up}                                                       
CapsLock & 0::SendInput,{Volume_Mute}                                                       

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

$4::
SetTimer, mainc, 10       ;10毫秒执行一次
return

mainc:
counts ++
GetKeyState, tstt, 4, P      ;获取按键T的状态
if ( tstt = "U" )   ;当松开按键的时候
{
	SetTimer, mainc, off   ;取消定时器
	if (counts < 13)   ;如果counts在10以内，说明从按下到松开的时间为10*10=100毫秒，判断为短按。
	{
		GetKeyState, capstt, CapsLock, T       ;获取大小写锁定键状态
		if ( capstt = "D" )   ;如果锁定
		{
			Send 4      ;发送T
		}
		else
		{
			Send 4      ;发送t
		}
	}
	else            ;如果counts大于10，说明是长按，则执行下面的主程序
	{
        Send $
		;sgBox, 即将戳开百度
	;gosub, mainp    ;转到mainp
	}
	counts = 0        ;重置计数，清空变量，用于下次使用
	tstt := 
	capstt := 
	return
}
return

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

RWin::AppsKey
return

;;Ctrl & Shift::Ctrl

mainp:
Run, http://www.baidu.com
return
