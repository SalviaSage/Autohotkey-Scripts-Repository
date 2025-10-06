#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#MaxHotkeysPerInterval, 20000

isWPressed = 0 ; for physical button
isQPressed = 0 ; for physical button

;#If WinActive("ahk_exe MYPROCESS.exe") || WinActive("ahk_exe MYPROCESS.exe") ;; Process Checker
$*~up::
	isQPressed = 1
	if (isWPressed = 0) {
		send {w down}
	}
return

$*~up Up::
	isQPressed = 0
	if (isWPressed = 0) {
		send {w up}
	}
return

$*~left::
	isQPressed = 1
	if (isWPressed = 0) {
		send {a down}
	}
return

$*~left Up::
	isQPressed = 0
	if (isWPressed = 0) {
		send {a up}
	}
return

$*~down::
	isQPressed = 1
	if (isWPressed = 0) {
		send {s down}
	}
return

$*~down Up::
	isQPressed = 0
	if (isWPressed = 0) {
		send {s up}
	}
return

$*~right::
	isQPressed = 1
	if (isWPressed = 0) {
		send {d down}
	}
return

$*~right Up::
	isQPressed = 0
	if (isWPressed = 0) {
		send {d up}
	}
return
#If
