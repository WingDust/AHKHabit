GroupAdd , Escheck ,ahk_exe nvim-qt.exe


IME_GetKeyboardLayoutName()
{
    VarSetCapacity(Str, 16)
    DllCall("GetKeyboardLayoutName", "Str", Str)
    Return Str
}

/*
1. 将 Esc 重映射，阻止 Esc 键原来的功能
2. 检测是否正使用中文在输入，检测是否存在输入窗口
  - 存在
    - 表示正在中文输入，只需要 send escape
  - 不存在
    - 表示不知道现在是中英文，但是它是正被使用
      - 获取当前系统的 KeyboardLayoutName 
      - 禁用输入法
      - 重加载 Rime
      - send escape
*/
#IfWinActive ahk_group Escheck 
    Esc::
        imewin := WinExist("ahk_class ATL:0414D8A8")
        imewin2 := WinExist("ahk_class ATL:00112928")
        l := StrLen(imewin)
        l2 := StrLen(imewin2)
        sleep 100
        if(l > 3 || l2 > 3)
        {
            Send {Escape}
        }
        else
        {
            ;Tooltip 2 %imewin% %imewin2%
            DllCall("SendMessage", UInt, WinActive("A"), UInt, 80, UInt, 1, UInt, DllCall("ImmDisableIME", DWORD,-1))
            DllCall("SendMessage", UInt, WinActive("A"), UInt, 80, UInt, 1, UInt, DllCall("LoadKeyboardLayout", Str, "e0200804", UInt, 1))
            Send {Escape}
        }
    Return
