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

global p:="H:/ElectronProject/piano/src/assets/audio3/"
global  ogg := ".ogg"
startNum := 24
;ToolTip level * startNum

;不用 g 与 v 24
1::
level := 1
SendRaw, 1
return 
2::
level := 2
Send {2}
return
3::
level := 3
Send {3}
return 
4::
level := 5
Send {5}
return 
5::
level := 5
Send {5}
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
| C   | C#  | D   | D#  | E   | F   | F#  | G   | G#  | A   | A#  | B   |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 4   | 5   | 6   | 7   | 8   | 9   | 10  | 11  | 12  | 13  | 14  | 15  |
| 16  | 17  | 18  | 19  | 20  | 21  | 22  | 23  | 24  | 25  | 26  | 27  |
| 28  | 29  | 30  | 31  | 32  | 33  | 34  | 35  | 36  | 37  | 38  | 39  |
| 40  | 41  | 42  | 43  | 44  | 45  | 46  | 47  | 48  | 49  | 50  | 51  |
| 52  | 53  | 54  | 55  | 56  | 57  | 58  | 59  | 60  | 61  | 62  | 63  |
| 64  | 65  | 66  | 67  | 68  | 69  | 70  | 71  | 72  | 73  | 74  | 75  |
| 76  | 77  | 78  | 79  | 80  | 81  | 82  | 83  | 84  | 85  | 86  | 87  |
| a   | q   | s   | w   | d   | f   | e   | z   | r   | x   | t   | c   |
| 0   | 1   | 2   | 3   | 4   | 5   | 6   | 7   | 8   | 9   | 10  | 11  |

$q:: 
; level *
; Run "mpv.exe" %p%%level%%ogg%  ,,Hide
; k := %p%%level%%ogg%
; MsgBox % p . level*5 . ogg
Run  % "mpv.exe "  p . level*4+1 . ogg,,Hide
; MsgBox,p . level . ogg
; Run "mpv.exe" p . level . ogg  ,,
SendRaw q
return
;/*
$w:: 
Run % "mpv.exe "  p . level*4+3 . ogg,,Hide
SendRaw w
return
$e:: 
Run % "mpv.exe "  p . level*6 . ogg,,Hide
SendRaw e
return
$r:: 
Run % "mpv.exe "  p . level*8 . ogg,,Hide
SendRaw r
return
$t:: 
Run % "mpv.exe "  p . level*10 . ogg,,Hide
SendRaw t
return
$a:: 
Run % "mpv.exe "  p . level*4 . ogg,,Hide
SendRaw a
return
$s:: 

Run % "mpv.exe "  p . level*4+2 . ogg,,Hide
SendRaw s
return
$d:: 
Run % "mpv.exe "  p . level*4+4 . ogg,,Hide
SendRaw d
return
$f:: 
Run % "mpv.exe "  p . level*4+5 . ogg,,Hide
SendRaw f
return
$z:: 
Run % "mpv.exe "  p . level*4+7 . ogg,,Hide
SendRaw z
 
return
$x:: 
Run % "mpv.exe "  p . level*4+9 . ogg,,Hide
SendRaw x
 
return
$c:: 
Run % "mpv.exe "  p . level*4+11 . ogg,,Hide
SendRaw c
 
return
$y:: 
Send y
return
$u:: 
Send u
 
return
$i:: 
Send i
 
return
$o:: 
Send o
 
return
$p:: 
Send p

 
return
$h:: 
Send h
 
return
$j:: 
Send j
 
return
$k:: 
Send k
 
return
$l:: 
Send l
 
return
$n:: 
Send n
 
return
$m:: 
Send m
 
 
; return

*/