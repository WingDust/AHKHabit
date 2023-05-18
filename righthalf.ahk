#SingleInstance force
WinGetPos,x,y,w,h,A
SysGet,monitorWorkArea,MonitorWorkArea,A
WinMove,A,,monitorWorkAreaRight/2,monitorWorkAreaTop,monitorWorkAreaRight/2-monitorWorkAreaLeft,monitorWorkAreaBottom-monitorWorkAreaTop
