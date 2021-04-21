
;/*
cout :=1
times :=1
Hotkey,~Escape,Open
Hotkey,j,desk

desk:
Send,{Down}
Return

Open:
cout :=0
times++
if (times/2==0)
{
Hotkey,j,desk,Off
Return
}else
{
Hotkey,j,desk,On
Return
}
Return
*/
