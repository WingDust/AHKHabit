~Enter::Cc()

  Cc(){
    Static last := 0
    if (A_TickCount - last < 500){

      MouseClick "left"
      ; MsgBox("work") 
	    Tooltip("do enter click")
        SetTimer () => ToolTip(), -3000
	
      last := 0
    }
    else
    {
      last := A_TickCount 
    }
}

