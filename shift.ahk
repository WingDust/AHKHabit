; 
Space::Shift
Space Up::
SendInput {Shift Up}
if (A_PriorKey = "Space"
and GetKeyState("Ctrl") = 0
and GetKeyState("Shift") = 0
and GetKeyState("Alt") = 0
and GetKeyState("LWin") = 0
and GetKeyState("RWin") = 0)
{
if (sLButtonClicked = 1) {
sLButtonClicked = 0
} else {
;SendInput {Shift}{Space}
SendInput {Space}
}
}
Return
*~LButton::
if (GetKeyState("Shift") = 1) {
sLButtonClicked = 1
}
Return
