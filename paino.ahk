#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

cmdReturn(command)
{
  shell := ComObjCreate("WScript.Shell")
  exec := shell.Exec(ComSpec  "/C" command)
  
  return exec.StdOut.ReadAll()
}

; Run 'E/mpv/mpv.exe "H:/ElectronProject/piano/src/assets/audio/German Concert D 021 083.ogg"'
; Run "python3.exe"  "H:/ElectronProject/Autohotkey/AHKHabit/play.py" "H:/ElectronProject/Autohotkey/AHKHabit/ae.svg",,Hide
; WinWait, ahk_exe python3.exe
cmdr(command){

  ; RunWait, %comspec% /c %command%
  RunWait, mpv.exe %command%
}


global level := 1
global highlevel := 6

global p:="H:/ElectronProject/piano/src/assets/audio3/"
global  ogg := ".ogg"
startNum := 24
;ToolTip level * startNum

;不用 g 与 v 24
$1::
level := 1
SendRaw, 1
return 
$2::
level := 2
SendRaw 2
return
$3::
level := 3
SendRaw 3
return 
$4::
level := 4
SendRaw 4
return 
$5::
level := 5
SendRaw 5
return 


$9::
highlevel := 6
SendRaw 9
return 

$0::
highlevel := 7
SendRaw 0
return 

s:="/"
c :="C"
d :="D"
e :="E"
f :="F"
g :="G"
a :="A"
b :="B"

; q-t 为黑键
; a-f 为白键
; |     | C   | C#  | D   | D#  | E   | F   | F#  | G   | G#  | A   | A#  | B   | 音区   |
; | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | ---- |
; | 1   | 1   | 2   | 3   |     |     |     |     |     |     |     |     |     | 低    |
; | 2   | 4   | 5   | 6   | 7   | 8   | 9   | 10  | 11  | 12  | 13  | 14  | 15  | //// |
; | 3   | 16  | 17  | 18  | 19  | 20  | 21  | 22  | 23  | 24  | 25  | 26  | 27  | 音    |
; | 4   | 28  | 29  | 30  | 31  | 32  | 33  | 34  | 35  | 36  | 37  | 38  | 39  | 中    |
; | 5   | 40  | 41  | 42  | 43  | 44  | 45  | 46  | 47  | 48  | 49  | 50  | 51  | //// |
; | 6   | 52  | 53  | 54  | 55  | 56  | 57  | 58  | 59  | 60  | 61  | 62  | 63  | 音    |
; | 7   | 64  | 65  | 66  | 67  | 68  | 69  | 70  | 71  | 72  | 73  | 74  | 75  | 高    |
; | 8   | 76  | 77  | 78  | 79  | 80  | 81  | 82  | 83  | 84  | 85  | 86  | 87  | //// |
; | 10  | 88  |     |     |     |     |     |     |     |     |     |     |     | 音    |
; | 10  | a   | q   | s   | w   | d   | f   | e   | z   | r   | x   | t   | c   | //// |
; | 11  | h   | y   | j   | u   | k   | l   | i   | b   | o   | n   | p   | m   | //// |
; | 12  | j   | y   | k   | u   | l   | `;  | i   | n   | o   | m   | p   | ,   | //// |
; | 13  | 0   | 1   | 2   | 3   | 4   | 5   | 6   | 7   | 8   | 9   | 10  | 11  | //// |

$q:: 
; level *
; Run "mpv.exe" %p%%level%%ogg%  ,,Hide
; k := %p%%level%%ogg%
; MsgBox % p . level*5 . ogg
Run  % "mpv.exe "  p . level*12+1 . ogg,,Hide
; MsgBox,p . level . ogg
; Run "mpv.exe" p . level . ogg  ,,
SendRaw q
return
;/*
$w:: 
Run % "mpv.exe "  p . level*12+3 . ogg,,Hide
SendRaw w
return
$e:: 
Run % "mpv.exe "  p . level*12+6 . ogg,,Hide
SendRaw e
return
$r:: 
Run % "mpv.exe "  p . level*12+8 . ogg,,Hide
SendRaw r
return
$t:: 
Run % "mpv.exe "  p . level*12+10 . ogg,,Hide
SendRaw t
return
$a:: 
Run % "mpv.exe "  p . level*12 . ogg,,Hide
SendRaw a
return
$s:: 

Run % "mpv.exe "  p . level*12+2 . ogg,,Hide
SendRaw s
return
$d:: 
Run % "mpv.exe "  p . level*12+4 . ogg,,Hide
SendRaw d
return
$f:: 
Run % "mpv.exe "  p . level*12+5 . ogg,,Hide
SendRaw f
return
$z:: 
Run % "mpv.exe "  p . level*12+7 . ogg,,Hide
SendRaw z
 
return
$x:: 
Run % "mpv.exe "  p . level*12+9 . ogg,,Hide
SendRaw x
 
return
$c:: 
Run % "mpv.exe "  p . level*12+11 . ogg,,Hide
SendRaw c
 
return
$y:: 

Run % "mpv.exe "  p . hightlevel*12+1 . ogg,,Hide
SendRaw y
return
$u:: 
Run % "mpv.exe "  p . hightlevel*12+3 . ogg,,Hide
SendRaw u
 
return
$i:: 
Run % "mpv.exe "  p . hightlevel*12+6 . ogg,,Hide
SendRaw i
 
return
$o:: 

Run % "mpv.exe "  p . hightlevel*12+8 . ogg,,Hide
SendRaw o
 
return
$p:: 
Run % "mpv.exe "  p . hightlevel*12+10 . ogg,,Hide
SendRaw p
return

 
$j:: 
Run % "mpv.exe "  p . hightlevel*12 . ogg,,Hide

SendRaw j
 
return
$k:: 
Run % "mpv.exe "  p . hightlevel*12+2 . ogg,,Hide
SendRaw k
 
return
$l:: 
Run % "mpv.exe "  p . hightlevel*12+4 . ogg,,Hide
SendRaw l
 
return

$;:: 
Run % "mpv.exe "  p . hightlevel*12+5 . ogg,,Hide
SendRaw `;
return
$n:: 
Run % "mpv.exe "  p . hightlevel*12+7 . ogg,,Hide
SendRaw n
 
return
$m:: 
Run % "mpv.exe "  p . hightlevel*12+9 . ogg,,Hide
SendRaw m
return

$,:: 
Run % "mpv.exe "  p . hightlevel*12+11 . ogg,,Hide
SendRaw `,
return

; $h:: 
; SendRaw h
 
; return
; $j:: 
; SendRaw j
 
; return
; $k:: 
; SendRaw k
 
; return
; $l:: 
; SendRaw l
 
; return
; $n:: 
; SendRaw n
 
; return
; $m:: 
; SendRaw m
 
 
; return

*/