;
;
; ;********************************************************************************
; ; Move Windows by 1/3
; ;********************************************************************************
;
; MoveCycle(Add) {
;     static SizeCycle := 0
;     SizeCycle := Mod(SizeCycle + Add, 6)
;     if (SizeCycle < 0)
;         SizeCycle := SizeCycle + 6
;
;     switch SizeCycle {
;         case 0: MoveWindow(0, 33.3333)
;         case 1: MoveWindow(0, 50)
;         case 2: MoveWindow(0, 66.6666)
;         case 3: MoveWindow(33.3333, 66.6666)
;         case 4: MoveWindow(50, 50)
;         case 5: MoveWindow(66.6666, 33.3333)
;     }
; }
;
; MoveWindow(XP, WP) {
;     ; Get current Window
;     WinTitle := WinGetTitle("A")
;
;     ; Get window position and size
;     WinPos := WinGetPos(WinTitle)
;
;     ; Get Taskbar height
;     tbPos := WinGetPos("ahk_class Shell_TrayWnd")
;     tbH := tbPos.Height
;
;     ; Calculate new position and size
;     XNew := (A_ScreenWidth * XP / 100)
;     WNew := (A_ScreenWidth * WP / 100)
;     HNew := (A_ScreenHeight - tbH)
;
;     ; Move window
;     WinRestore(WinTitle)
;     WinMove(XNew, 0, WNew, HNew, WinTitle)
; }
;
; #!Left:: MoveCycle(-1)
; #!Right:: MoveCycle(1)

; 按下 CapsLock + Right 将当前窗口宽度缩小 2 像素

; 使用 CapsLock 作为修饰键，禁用其默认功能
; CapsLock:: {
;     SendInput "{CapsLock up}"
;     SetCapsLockState("AlwaysOff")
; }

; CapsLock + Right 组合键
~CapsLock & Left:: {
    ; 获取当前活动窗口的句柄
    hwnd := WinExist("A")

    ; 获取窗口的坐标和尺寸
    WinGetPos &x, &y, &width, &height, hwnd

    ; 将宽度缩小 2 像素
    width -= 200

    ; 重新设置窗口大小
    WinMove x, y, width, height, hwnd
}

~CapsLock & Right:: {
    ; 获取当前活动窗口的句柄
    hwnd := WinExist("A")

    ; 获取窗口的坐标和尺寸
    WinGetPos &x, &y, &width, &height, hwnd

    ; 将宽度缩小 2 像素
    width += 200

    ; 重新设置窗口大小
    WinMove x, y, width, height, hwnd
}

~CapsLock & Up:: {
    ; 获取当前活动窗口的句柄
    hwnd := WinExist("A")

    ; 获取窗口的坐标和尺寸
    WinGetPos &x, &y, &width, &height, hwnd

    ; 将宽度缩小 2 像素
    height -= 200

    ; 重新设置窗口大小
    WinMove x, y, width, height, hwnd
}

~CapsLock & Down:: {
    ; 获取当前活动窗口的句柄
    hwnd := WinExist("A")

    ; 获取窗口的坐标和尺寸
    WinGetPos &x, &y, &width, &height, hwnd

    ; 将宽度缩小 2 像素
    height += 200

    ; 重新设置窗口大小
    WinMove x, y, width, height, hwnd
}

~Enter::Cc()

  Cc(){
    Static last := 0
    if (A_TickCount - last < 500){

      MouseClick "left"
      ; MsgBox("work") 
      last := 0
    }
    else
    {
      last := A_TickCount 
    }
}
