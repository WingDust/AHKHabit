App := Gui()
App.title := ""

; App.Add("Text",,"欢迎使用自定义工具！")
; App.BackColor := "EEAA99"

WB := App.Add("ActiveX","W400 h300","Shell.Explorer").Value
WB.Navigate("file:\\D:\soft\AHKHabit\test.html")
; WB.Navigate("https://www.baidu.com")






; 让此颜色的所有像素透明且让文本显示为半透明(150):
; WinSetTransColor(App.BackColor " 150", App)
; App.SetFont(,"方正楷体")
;; 
App.Opt("-Caption")
SetTimer Close, 2000


Close()
{
  Tooltip "work"
  ExitApp
}

; App.Opt("+Resize ")
App.Show()
; App.Show("W400 H300")
Return


