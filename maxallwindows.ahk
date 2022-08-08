;;https://www.autohotkey.com/boards/viewtopic.php?t=40641
WinGet, List, List

Loop % List

   WinMaximize % "ahk_id " List%A_Index%
