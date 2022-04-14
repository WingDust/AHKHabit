;; [仅长按单键执行功能，不影响短按示例](https://www.autohotkey.com/boards/viewtopic.php?t=6082)
;; 


$1::
	KeyWait, 1
	If (A_TimeSinceThisHotkey > 300)
		SetTimer, main1, -1
	Else
		;SendInput, % GetKeyState("CapsLock", "T") ? "T" : "t"
		SendInput 1 
Return

main1:
    ;Tooltip 输入T ,1920,1080
    SendRaw !
Return


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




space::
Send {space}
return

space & 1:: Send !
space & 2:: Send @
space & 3:: Send #
space & 4:: Send $
space & 5:: Send {`%}
space & 6:: Send ^
space & 7:: Send &
space & 8:: Send *
space & 9:: Send (
space & 0:: Send )
space & -:: Send _
space & =:: Send +
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
space & [:: Send {`{}
space & ]:: Send {`}}
space & a:: Send A
space & s:: Send S
space & d:: Send D
space & f:: Send F
space & g:: Send G
space & h:: Send H
space & j:: Send J
space & k:: Send K
space & l:: Send L
space & `;:: Send :
space & ':: Send "
space & z:: Send Z
space & x:: Send X
space & c:: Send C 
space & v:: Send V
space & b:: Send B
space & n:: Send N
space & m:: Send M 
space & ,:: Send <
space & .:: Send >
space & /:: Send ?
space & \:: Send |
return