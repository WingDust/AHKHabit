;; [仅长按单键执行功能，不影响短按示例](https://www.autohotkey.com/boards/viewtopic.php?t=6082)
;; 


; $1::
; 	KeyWait, 1
; 	If (A_TimeSinceThisHotkey > 300)
; 		SetTimer, main1, -1
; 	Else
; 		;SendInput, % GetKeyState("CapsLock", "T") ? "T" : "t"
; 		SendInput 1 
; Return

; main1:
;     ;Tooltip 输入T ,1920,1080
;     SendRaw !
; Return


$2::
  KeyWait, 2
  If (A_TimeSinceThisHotkey > 300)
    SetTimer, main2, -1
  Else
    SendInput 2 
Return

main2:
    ;Tooltip 输入T ,1920,1080
    SendRaw @
Return



$3::
  KeyWait, 3
  If (A_TimeSinceThisHotkey > 300)
    SetTimer, main3, -1
  Else
    SendInput 3 
Return

main3:
    SendRaw #
Return



$4::
  KeyWait, 4
  If (A_TimeSinceThisHotkey > 300)
    SetTimer, main4, -1
  Else
    SendInput 4 
Return

main4:
    ;Tooltip 输入T ,1920,1080
    SendRaw $
Return



$5::
  KeyWait, 5
  If (A_TimeSinceThisHotkey > 300)
    SetTimer, main5, -1
  Else
    SendInput 5
Return

main5:
    SendRaw,`% ;`转义
Return



$6::
  KeyWait, 6
  If (A_TimeSinceThisHotkey > 300)
    SetTimer, main6, -1
  Else
    SendInput 6 
Return

main6:
    ;Tooltip 输入T ,1920,1080
    SendRaw ^
Return



$7::
  KeyWait, 7
  If (A_TimeSinceThisHotkey > 300)
    SetTimer, main7, -1
  Else
    SendInput 7 
Return

main7:
    ;Tooltip 输入T ,1920,1080
    SendRaw &
Return



$8::
  KeyWait, 8
  If (A_TimeSinceThisHotkey > 300)
    SetTimer, main8, -1
  Else
    SendInput 8 
Return

main8:
    ;Tooltip 输入T ,1920,1080
    SendRaw *
Return

$9::
  KeyWait, 9
  If (A_TimeSinceThisHotkey > 300)
    SetTimer, main9, -1
  Else
    SendInput 9 
Return

main9:
    ;Tooltip 输入T ,1920,1080
    SendRaw (
Return


$0::
  KeyWait, 0
  If (A_TimeSinceThisHotkey > 300)
    SetTimer, main0, -1
  Else
    SendInput 0 
Return

main0:
    ;Tooltip 输入T ,1920,1080
    SendRaw )
Return


$-::
  KeyWait, -
  If (A_TimeSinceThisHotkey > 300)
    SetTimer, main-, -1
  Else
    SendInput - 
Return

main-:
    ;Tooltip 输入T ,1920,1080
    SendRaw _
Return



$=::
  KeyWait, `=
  If (A_TimeSinceThisHotkey > 300)
    SetTimer, maineq, -1
  Else
    SendInput `= 
Return

maineq:
    ;Tooltip 输入T ,1920,1080
    SendRaw +
Return


$[::
  KeyWait, [
  If (A_TimeSinceThisHotkey > 300)
    SetTimer, main[, -1
  Else
    SendInput [ 
Return

main[:
    ;Tooltip 输入T ,1920,1080
    SendRaw {
Return


$]::
  KeyWait, ]
  If (A_TimeSinceThisHotkey > 300)
    SetTimer, main], -1
  Else
    SendInput ] 
Return

main]:
    ;Tooltip 输入T ,1920,1080
    SendRaw }
Return


$;::
  KeyWait, `;
  If (A_TimeSinceThisHotkey > 300)
    SetTimer, mainsp, -1
  Else
    SendInput `; 
Return

mainsp:
    ;Tooltip 输入T ,1920,1080
    SendRaw :
Return


$'::
  KeyWait, '
  If (A_TimeSinceThisHotkey > 300)
    SetTimer, mainqutoe, -1
  Else
    SendInput ' 
Return

mainqutoe:
    ;Tooltip 输入T ,1920,1080
    SendRaw "
Return


$\::
  KeyWait, \
  If (A_TimeSinceThisHotkey > 300)
    SetTimer, mainop, -1
  Else
    SendInput \
Return

mainop:
    ;Tooltip 输入T ,1920,1080
    SendRaw |
Return


$,::
  KeyWait, `,
  If (A_TimeSinceThisHotkey > 300)
    SetTimer, maind, -1
  Else
    SendInput `, 
Return

maind:
    ;Tooltip 输入T ,1920,1080
    SendRaw <
Return


$.::
  KeyWait, .
  If (A_TimeSinceThisHotkey > 300)
    SetTimer, maindian, -1
  Else
    SendInput . 
Return

maindian:
    ;Tooltip 输入T ,1920,1080
    SendRaw >
Return


$/::
  KeyWait, /
  If (A_TimeSinceThisHotkey > 300)
    SetTimer, mainposix, -1
  Else
    SendInput /
Return

mainposix:
    ;Tooltip 输入T ,1920,1080
    SendRaw ?
Return


$`::
  KeyWait, ``
  If (A_TimeSinceThisHotkey > 300)
    SetTimer, maink, -1
  Else
    SendInput ``
Return

maink:
    ;Tooltip 输入T ,1920,1080
    SendRaw ~
Return



$g::
  KeyWait, g
  If (A_TimeSinceThisHotkey > 300)
    SetTimer, maing, -1
  Else
    ;SendInput g
    SendInput, % GetKeyState("CapsLock", "G") ? "G" : "g"
Return

maing:
    ;Tooltip 输入T ,1920,1080
    SendRaw G
Return


;; $4::
;; SetTimer, mainc, 10       ;10毫秒执行一次
;; return
;; 
;; mainc:
;; counts ++
;; GetKeyState, tstt, 4, P      ;获取按键T的状态
;; if ( tstt = "U" )   ;当松开按键的时候
;; {
;; 	SetTimer, mainc, off   ;取消定时器
;; 	if (counts < 13)   ;如果counts在10以内，说明从按下到松开的时间为10*10=100毫秒，判断为短按。
;; 	{
;; 		GetKeyState, capstt, CapsLock, T       ;获取大小写锁定键状态
;; 		if ( capstt = "D" )   ;如果锁定
;; 		{
;; 			Send 4      ;发送T
;; 		}
;; 		else
;; 		{
;; 			Send 4      ;发送t
;; 		}
;; 	}
;; 	else            ;如果counts大于10，说明是长按，则执行下面的主程序
;; 	{
;;         Send $
;; 		;sgBox, 即将戳开百度
;; 	;gosub, mainp    ;转到mainp
;; 	}
;; 	counts = 0        ;重置计数，清空变量，用于下次使用
;; 	tstt := 
;; 	capstt := 
;; 	return
;; }
;; return




;； 改用 powertoys 实现
; ctrl & h::
;  KeyWait ctrl 
;  KeyWait h 
  ; Send {BS}
  ; Send ^
; Return
; ctrl & h::Send BackSpace
;; [Spacebar as Space and as Shift](https://www.autohotkey.com/board/topic/57344-spacebar-as-space-and-as-shift/)
;; 将空格当成 shift 和 space 


;~space::
;KeyWait, space, U T1 ; Wait for the space button to be released.
;if  (ErrorLevel = 0) {  ; space was not held too long. A long press indicates an aborted shift, not a space, so ignore.
;   Send {space}
;}
;return 

space::
Send {space}
return


;  [[AutoHotkey] 怎样让空格键做修饰键时是 shift，单独按时仍然是空格？](https://www.v2ex.com/t/390318)
;Space Up:: 
;    SendInput {Shift Up} 
;    if ( A_PriorKey = "Space"  and GetKeyState("Ctrl") = 0 ) 
;    ;if (GetKeyState("Ctrl") = 0 and GetKeyState("Shift") = 0 and GetKeyState("Alt") = 0) 
;    { 
;      Tooltip 输入T ,1920,1080
;        if (sLButtonClicked = 1) 
;        { 
;            sLButtonClicked = 0 
;        } 
;        else 
;        { 
;            SendInput {Shift}{Space} 
;        } 
;    } 
;    Return 
; space & 1:: Send !
; space & 2:: Send @
; space & 3:: Send #
; space & 4:: Send $
; space & 5:: Send {`%}
; space & 6:: Send `^
; space & 7:: Send &
; space & 8:: Send *
; space & 9:: Send (
; space & 0:: Send )
; space & -:: Send _
; space & =:: Send +
space & q:: Send Q
space & w:: Send W
space & e:: Send E
space & r:: Send R
space & t:: Send T
space & y:: Send Y
space & u:: Send U
space & i:: Send I
space & o:: Send O
space & p:: Send P
; space & [:: Send {`{}
; space & ]:: Send {`}}
space & a:: Send A
space & s:: Send S
space & d:: Send D
space & f:: Send F
space & g:: Send G
space & h:: Send H
space & j:: Send J
space & k:: Send K
space & l:: Send L
; space & `;:: Send :
; space & ':: Send "
space & z:: Send Z
space & x:: Send X
space & c:: Send C 
space & v:: Send V
space & b:: Send B
space & n:: Send N
space & m:: Send M 
; space & ,:: Send <
; space & .:: Send >
; space & /:: Send ?
; space & \:: Send |
return

*/

;; 不能将 Return 与 Send 放到同一行
^q::Send,!{f4}
Return
; ^q::MsgBox hotkey 


;;  ctrl space 按住 
;; 查看文档 高级热键功能
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & 1:: Send ^+1
return

#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & 2:: Send ^+2
return

#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & 3:: Send ^+3
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & 4:: Send ^+4
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & 5:: Send ^+5
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & 6:: Send ^+6
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & 7:: Send ^+7
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & 8:: Send ^+8
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & 9:: Send ^+9
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & 0:: Send ^+0
return

#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & q:: Send ^+q
return

#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & w:: Send ^+w
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & e:: Send ^+e
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & r:: Send ^+r
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & t:: Send ^+t
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & y:: Send ^+y
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & u:: Send ^+u
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & i:: Send ^+i
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & o:: Send ^+o
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & p:: Send ^+p
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & a:: Send ^+a
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & s:: Send ^+s
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & d:: Send ^+d
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & f:: Send ^+f
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & g:: Send ^+g
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & h:: Send ^+h
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & j:: Send ^+j
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & k:: Send ^+k
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & l:: Send ^+l
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & z:: Send ^+z
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & x:: Send ^+x
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & c:: Send ^+c
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & v:: Send ^+v
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & b:: Send ^+b
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & n:: Send ^+n
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & m:: Send ^+m
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & [:: Send ^+`[
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & ]:: Send ^+]
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & `;:: Send  ^+`;
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & ':: Send ^+'
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & \:: Send ^+\
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & ,:: Send ^+,
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & .:: Send ^+.
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & /:: Send ^+/
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space & Escape:: Send ^+{Escape}
return
#if GetKeyState("Ctrl","p")
; space & 1::MsgBox hotkey s
space &  `:: Send ^+`
return

;; 单  space 被按住
#if GetKeyState("Space","p")
1:: Send {!}
return

#if GetKeyState("Space","p")
2:: Send {@}
return

#if GetKeyState("Space","p")
3:: Send {#}
return

#if GetKeyState("Space","p")
4:: Send {$}
return

#if GetKeyState("Space","p")
5:: Send {`%}
return

#if GetKeyState("Space","p")
6:: Send {^}
return

#if GetKeyState("Space","p")
7:: Send {&}
return

#if GetKeyState("Space","p")
8:: Send {*}
return

#if GetKeyState("Space","p")
9:: Send {(}
return

#if GetKeyState("Space","p")
0:: Send {)}
return



#if GetKeyState("Space","p")
-:: Send {_}
return
#if GetKeyState("Space","p")
=:: Send {+}
return
#if GetKeyState("Space","p")
[:: Send {`{}
return
#if GetKeyState("Space","p")
]:: Send {`}}
return
#if GetKeyState("Space","p")
`;:: Send {:}
return
#if GetKeyState("Space","p")
':: Send `"
return
#if GetKeyState("Space","p")
\:: Send {|}
return
#if GetKeyState("Space","p")
,:: Send {<}
return
#if GetKeyState("Space","p")
.:: Send {>}
return
#if GetKeyState("Space","p")
/:: Send {?}
return
#if GetKeyState("Space","p")
`:: Send {~}
return



;[AutoHotkey三击Alt和双击Alt设为不同快捷键](https://blog.csdn.net/liuyukuan/article/details/5955347) 
; [关于“keywait按键等待”的一点想法](https://www.autoahk.com/archives/1547)
; LAlt & Space::
; Alt & Space & x::
; ; ~LAlt & Space::
;   ; Tooltip 输入T ,1920,1080
;   Tooltip 输入 x 窗口最大化 ,960,540
;   KeyWait,x, ,t1
;   WinGetActiveTitle, CurrentWinTitle
;   WinMaximize, CurrentWinTitle
;   Tooltip 窗口最大化 ,960,540
; return

Alt & Space::
  WinGetActiveTitle, CurrentWinTitle
  WinSet,TransColor,ffffff, 200 , CurrentWinTitle