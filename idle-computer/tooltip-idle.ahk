RunWaitOne(cmd){
    shell := ComObject("WScript.Shell")
    pp := A_ComSpec " /C " cmd
    exec := shell.Run(pp,0,false)
    ; exec := shell.Exec(pp)
    return exec.StdOut.ReadAll()
}

GetIdle()
{
    t := RunWaitOne("D:\soft\AHKHabit\idle-computer\idle-computer.exe")
    ToolTip t
}

SetTimer GetIdle, 40000
