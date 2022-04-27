;增加自动延时启动程序 5000毫秒就是5秒
Sleep, 1000

Run ,emacs,,Hide
; 由于 Window 10 不支持直接在开启运行 powershell ,所以使用 ahk 来启动

; RunWait powershell.exe "-File H:/ElectronProject/Autohotkey/AHKHabit/startup.ps1",,hide