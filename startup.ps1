# Start-Process -WindowStyle Hidden emacs
# param( $a, $b )
#region 关键代码：强迫以管理员权限运行
$currentWi = [Security.Principal.WindowsIdentity]::GetCurrent()
$currentWp = [Security.Principal.WindowsPrincipal]$currentWi
 
if( -not $currentWp.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))
{
  $boundPara = ($MyInvocation.BoundParameters.Keys | ForEach-Object{
     '-{0} {1}' -f  $_ ,$MyInvocation.BoundParameters[$_]} ) -join ' '
  $currentFile = (Resolve-Path  $MyInvocation.InvocationName).Path
 
 $fullPara = $boundPara + ' ' + $args -join ' '
 Start-Process "E:/AutoHotkey/AutoHotkeyU64.exe"   -ArgumentList "H:/ElectronProject/Autohotkey/AHKHabit/startup.ahk"   -verb runas
#  Start-Process "E:/AutoHotkey/AutoHotkeyU64.exe"   -ArgumentList "$currentFile $fullPara"   -verb runas
 return
}
#endregion