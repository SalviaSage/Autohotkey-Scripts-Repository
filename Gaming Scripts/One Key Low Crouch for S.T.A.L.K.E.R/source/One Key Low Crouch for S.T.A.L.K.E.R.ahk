#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#MaxHotkeysPerInterval, 20000

;; Bind crouch to ctrl. Bind low crouch to alt for this script to work.

isWPressed = 0 ; for physical button
isQPressed = 0 ; for physical button

#If WinActive("ahk_exe XR_3DA.exe") || WinActive("ahk_exe xrEngine.exe")
$*~LAlT::
	isQPressed = 1
	if (isWPressed = 0) {
		send {LCtrl down}
	}
return

$*~LAlT Up::
	isQPressed = 0
	if (isWPressed = 0) {
		send {LCtrl up}
	}
return
#If
