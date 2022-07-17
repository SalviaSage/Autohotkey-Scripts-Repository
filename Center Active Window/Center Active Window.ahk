;; Hotkeys Assigned: Ctrl + Alt + C key.
;; Hotkeys Assigned: Ctrl + Alt + B key.

#NoEnv ;; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn ;; Enable warnings to assist with detecting common errors.
SendMode Input ;; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ;; Ensures a consistent starting directory.

Menu, Tray, Icon, Shell32.dll, 253
Menu, Tray, Tip, % "Center active windows with the Ctrl + Alt + C key`nand reverse it by pressing the Ctrl + Alt + B key."

^!c::

global WindowName
global X
global Y
global BegWidth
global BegHeight

WinGetTitle, WindowName, A
WinGetPos, X, Y, BegWidth, BegHeight, %WindowName%

CenterWindow(WindowTitleVariable)
{
	WinGetPos,,, Width, Height, %WindowTitleVariable%
	WinMove, %WindowTitleVariable%,, (A_ScreenWidth/2) - (Width/2), (A_ScreenHeight/2) - (Height/2)
}

CenterWindow(WindowName)
return

^!b::
WinMove, %WindowName%,, X, Y, BegWidth, BegHeight

return
