SetTitleMatchMode,regex
GroupAdd , Escheck ,ahk_exe nvim-qt.exe
GroupAdd , Escheck ,ahk_exe Code.exe
GroupAdd , Escheck ,ahk_exe emacs.exe
GroupAdd , Escheck ,ahk_class Emacs

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

RemoveToolTip:
ToolTip
return

;ahk_class ATL:00112928
;ahk_class ATL:00007FFF76DD4A60
;ahk_class ATL:00007FFC6C084A60
;ahk_class ATL:70B4D8A8
;ahk_class ATL:00007FFC7FC74A60
;ahk_class ATL:00007FFC7EE34A60
#IfWinActive ahk_group Escheck 
    Esc::
        ;imewin := WinExist("ahk_class ATL:0414D8A8")
        ;imewin2 := WinExist("ahk_class ATL:00112928")
        ;CodeImewin := WinExist("ahk_class ATL:00007FFD916B4A60")
        ;CodeImewin2 := WinExist("ahk_class ATL:00007FFC7FC74A60")
        ;emacsImewin := WinExist("ahk_class ATL:00007FFF76DD4A60")
        ;emacsImewin2 := WinExist("ahk_class ATL:00007FFC6C084A60")
        ;emacsImewin3 := WinExist("ahk_class ATL:00007FFC7EE34A60")
        ;NvimImewin := WinExist("ahk_class ATL:70B4D8A8")
        win := WinExist("ahk_class ATL:")


        ;l := StrLen(imewin)
        ;l2 := StrLen(imewin2)
        ;Codel := StrLen(CodeImewin)
        ;emacsl := StrLen(emacsImewin)
        ;emacsl2 := StrLen(emacsImewin2)
        ;emacsl3 := StrLen(emacsImewin3)
        ;nl := StrLen(NvimImewin)
        ;cl := StrLen(CodeImewin2)
        ll := StrLen(win)
        sleep 100
        ;ToolTip %emacsl2%

        if(ll>3)
        ;if(l > 3 || l2 > 3|| Codel > 3 || emacsl >3 || emacsl2 > 3 || emacsl3 > 3 || nl >3 || cl >3 || ll >3)
        {
            Tooltip No Need ,1920,1080
            SetTimer ,RemoveToolTip , -5000
            Send {Escape}
        }
        else
        {
            Tooltip Need ,1920,1080
            SetTimer ,RemoveToolTip , -5000
            ;Tooltip 2 %imewin% %imewin2% %CodeImewin%
            Run,"H:\mult.lnk"
            Send {Escape}
        }

    Return
#IfWinActive



