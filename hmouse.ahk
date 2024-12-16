
global cx:=0
global cy:=0

; TimedToolTip(content, life:=0, x?, y?, whichToolTip:=1){
; 	life := life < 0 ? 0 : life
; 	; ToolTip(content, x?, y?, whichToolTip)
; 	SetTimer(()=>ToolTip("", , , whichToolTip), -life)
; }

HideM()
{

  global cx
  global cy
  MouseGetPos &xpos, &ypos 
  ; if (cx = 1919 and cy = 900){
  ;   return 
  ;  }
  if  not (cx = xpos and cy =ypos) {
    MouseMove 1919, 900
    global cx := xpos
    global cy := ypos

    ToolTip(cx)
	; SetTimer(()=>ToolTip(global cx, , , ), -10000)
    SetTimer () => ToolTip(), -5000
  }
  ; Tooltip "work"
  ; ExitApp
}

SetTimer HideM, 20000
