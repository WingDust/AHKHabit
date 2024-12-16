#SingleInstance

Options := "levelup|选项2|选项3"


Gui, Show , w400 h300, commander
Gui, Add, Text, x10 y10 w90 Center,text here 
Gui, Add, DropDownList, vColorChoice, %Options%
Gui, Add, Button, default, OK
return

GuiClose:
ButtonOK:
Gui, Submit 
GuiControlGet, ColorChoise 
MsgBox You entered "%ColorChoise%".
ExitApp
