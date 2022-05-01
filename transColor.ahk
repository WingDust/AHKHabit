
Alt & Space::
  WinGetActiveTitle, CurrentWinTitle
  ; Tooltip 窗口化 ,960,540
  ; MsgBox, The active window is "%CurrentWinTitle%".
  Tooltip  "%CurrentWinTitle%" ,960,540
  ; WinSet,TransColor,FFFFFF, 100 , CurrentWinTitle
  WinSet,TransColor,White, 100 , CurrentWinTitle
  WinSet,Transparent,200, CurrentWinTitle