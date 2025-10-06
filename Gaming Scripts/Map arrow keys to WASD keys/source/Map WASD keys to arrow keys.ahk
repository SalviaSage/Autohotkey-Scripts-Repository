#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#MaxHotkeysPerInterval, 20000

isWPressed = 0 ; for physical button
isQPressed = 0 ; for physical button

;#If WinActive("ahk_exe XR_3DA.exe") || WinActive("ahk_exe xrEngine.exe")
$*~w::
	isQPressed = 1
	if (isWPressed = 0) {
		send {Up down}
	}
return

$*~w Up::
	isQPressed = 0
	if (isWPressed = 0) {
		send {Up up}
	}
return

$*~a::
	isQPressed = 1
	if (isWPressed = 0) {
		send {Left down}
	}
return

$*~a Up::
	isQPressed = 0
	if (isWPressed = 0) {
		send {Left up}
	}
return

$*~s::
	isQPressed = 1
	if (isWPressed = 0) {
		send {Down down}
	}
return

$*~s Up::
	isQPressed = 0
	if (isWPressed = 0) {
		send {Down up}
	}
return

$*~d::
	isQPressed = 1
	if (isWPressed = 0) {
		send {Right down}
	}
return

$*~d Up::
	isQPressed = 0
	if (isWPressed = 0) {
		send {Right up}
	}
return
#If
