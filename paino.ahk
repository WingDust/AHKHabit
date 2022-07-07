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


global level := 5

global p:="H:/ElectronProject/piano/src/assets/audio3/"
global  ogg := ".ogg"
startNum := 24
;ToolTip level * startNum

;不用 g 与 v 24
1::
level := 1
Send {1}
return 

s:="/"
c :="C"
d :="D"
e :="E"
f :="F"
g :="G"
a :="A"
b :="B"


$q:: 
; level *
; Run "mpv.exe" %p%%level%%ogg%  ,,Hide
; k := %p%%level%%ogg%
; MsgBox %p%%level%%ogg%
Run "mpv.exe" %p%%level%%ogg% ,,
; MsgBox,p . level . ogg
; Run "mpv.exe" p . level . ogg  ,,
Send {q}
;Run  ,,Hide
;MsgBox pn%cn%
return
/*
w:: Send w

;Run "mpv.exe"  p startNum*level+1 " 083.ogg" ,,Hide
; Run "mpv.exe"  "H:/ElectronProject/piano/src/assets/audio/German Concert D 021 083.ogg" ,,Hide
return
e:: Send e
;Run "mpv.exe"  p startNum*level+2 " 083.ogg" ,,Hide
; Run "mpv.exe"  "H:/ElectronProject/piano/src/assets/audio/German Concert D 021 083.ogg" ,,Hide
return
r:: Send r
;Run "mpv.exe"  p startNum*level+3 " 083.ogg" ,,Hide
; Run "mpv.exe"  "H:/ElectronProject/piano/src/assets/audio/German Concert D 021 083.ogg" ,,Hide
return
t:: Send t
;Run "mpv.exe"  p startNum*level+4 " 083.ogg" ,,Hide
; Run "mpv.exe"  "H:/ElectronProject/piano/src/assets/audio/German Concert D 021 083.ogg" ,,Hide
return
a:: Send a
;Run "mpv.exe"  p startNum*level+5 " 083.ogg" ,,Hide
; Run "mpv.exe"  "H:/ElectronProject/piano/src/assets/audio/German Concert D 021 083.ogg" ,,Hide
return
s:: Send s
;Run "mpv.exe"  p startNum*level+6 " 083.ogg" ,,Hide
; Run "mpv.exe"  "H:/ElectronProject/piano/src/assets/audio/German Concert D 021 083.ogg" ,,Hide
return
d:: Send d
;Run "mpv.exe"  p startNum*level+7 " 083.ogg" ,,Hide
; Run "mpv.exe"  "H:/ElectronProject/piano/src/assets/audio/German Concert D 021 083.ogg" ,,Hide
return
f:: Send f
;Run "mpv.exe"  "H:/ElectronProject/piano/src/assets/audio/German Concert D 021 083.ogg" ,,Hide
return
z:: Send z
 
return
x:: Send x
 
return
c:: Send c
 
return
y:: Send y
return
u:: Send u
 
return
i:: Send i
 
return
o:: Send o
 
return
p:: Send p

 
return
h:: Send h
 
return
j:: Send j
 
return
k:: Send k
 
return
l:: Send l
 
return
n:: Send n
 
return
m:: Send m
 
return
; ,:: Send ,
 
; return

*/