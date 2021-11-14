#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Persistent, On
#SingleInstance, Force
#WinActivateForce

Menu, Tray, Icon, compstui.dll, 48 ;; icon
Menu, Tray, Tip, % "VolumeScroll`n`nChange the volume from the taskbar with the mousewheel."

DetectHiddenWindows, On
SetTitleMatchMode, 2

MouseIsOver(WinTitle)
{
	MouseGetPos,,, Win
	return WinExist(WinTitle . " ahk_id " . Win)
}

#If MouseIsOver("ahk_class Shell_TrayWnd")
	WheelUp::Send, {Volume_Up}
	WheelDown::Send, {Volume_Down}
#If
