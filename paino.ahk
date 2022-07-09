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


$q:: 
; level *
; Run "mpv.exe" %p%%level%%ogg%  ,,Hide
; k := %p%%level%%ogg%
; MsgBox % p . level*5 . ogg
Run % "mpv.exe "  p . level*4+1 . ogg,,
; Run "mpv.exe" %p%%level*5%%ogg% ,,
; MsgBox,p . level . ogg
; Run "mpv.exe" p . level . ogg  ,,
Send {q}
;Run  ,,Hide
;MsgBox pn%cn%
return
;/*
$w:: 

Run % "mpv.exe "  p . level*4+1 . ogg,,
SendRaw w

;Run "mpv.exe"  p startNum*level+1 " 083.ogg" ,,Hide
; Run "mpv.exe"  "H:/ElectronProject/piano/src/assets/audio/German Concert D 021 083.ogg" ,,Hide
return
$e:: 
Send e
;Run "mpv.exe"  p startNum*level+2 " 083.ogg" ,,Hide
; Run "mpv.exe"  "H:/ElectronProject/piano/src/assets/audio/German Concert D 021 083.ogg" ,,Hide
return
$r:: 
Send r
;Run "mpv.exe"  p startNum*level+3 " 083.ogg" ,,Hide
; Run "mpv.exe"  "H:/ElectronProject/piano/src/assets/audio/German Concert D 021 083.ogg" ,,Hide
return
$t:: 
SendRaw t
;Run "mpv.exe"  p startNum*level+4 " 083.ogg" ,,Hide
; Run "mpv.exe"  "H:/ElectronProject/piano/src/assets/audio/German Concert D 021 083.ogg" ,,Hide
return
$a:: 

Run % "mpv.exe "  p . level*4 . ogg,,
SendRaw a
return
$s:: 

Run % "mpv.exe "  p . level*4+2 . ogg,,
Send s
;Run "mpv.exe"  p startNum*level+6 " 083.ogg" ,,Hide
; Run "mpv.exe"  "H:/ElectronProject/piano/src/assets/audio/German Concert D 021 083.ogg" ,,Hide
return
$d:: 
Send d
;Run "mpv.exe"  p startNum*level+7 " 083.ogg" ,,Hide
; Run "mpv.exe"  "H:/ElectronProject/piano/src/assets/audio/German Concert D 021 083.ogg" ,,Hide
return
$f:: 
Send f
;Run "mpv.exe"  "H:/ElectronProject/piano/src/assets/audio/German Concert D 021 083.ogg" ,,Hide
return
$z:: 
Send z
 
return
$x:: 
Send x
 
return
$c:: 
Send c
 
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