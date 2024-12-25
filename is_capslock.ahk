
ToolCaps()
{
  state := GetKeyState("CapsLock","T")

  if (state = 1) {
    Tooltip("CapsLock state is " state)
    SetTimer () => ToolTip(), -5000
  }
}

SetTimer ToolCaps, 5000
