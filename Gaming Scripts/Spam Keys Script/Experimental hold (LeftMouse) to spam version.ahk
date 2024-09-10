#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

*$LButton::
	Click, Left
	KeyWait, LButton, T0.15
	While GetKeyState("LButton", "P") {
		Click, Left
		Sleep 50
	}
	KeyWait, LButton
Return
