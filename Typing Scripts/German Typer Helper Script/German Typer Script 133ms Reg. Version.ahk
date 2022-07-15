#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;; German Typer Helper Script

;; You should only run one such typer helper script. For example, do not have the Spanish typer helper script running alongside Turkish typer helper script.

#persistent
#singleInstance, Force

Menu, Tray, Icon, accessibilitycpl.dll, 11 ;; icon
Menu, Tray, Tip, % "GermanTyper`nScript 133ms`nReg. Version"

;; Variable Definitions
doExtraStuff := 0
doExtraStuff1 := 0
doExtraStuff2 := 0
doExtraStuff3 := 0
doExtraStuff4 := 0
doExtraStuff5 := 0
return

;; Code section for correctly typing the sharp es.

s::
Send {Blind}{U+0073}
setTimer, extraStuffTimer, -133
doExtraStuff++
if (doExtraStuff == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+00DF}
}
return

extraStuffTimer:
; stop doing extra stuff
doExtraStuff := 0
return

+s::
Send {Blind}{U+0053}
setTimer, extraStuffTimer1, -133
doExtraStuff1++
if (doExtraStuff1 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+1E9E}
}
return

extraStuffTimer1:
; stop doing extra stuff
doExtraStuff1 := 0
return

;; Code section for correctly typing the umlaut letters.

a::
Send {Blind}{U+0061}
setTimer, extraStuffTimer2, -133
doExtraStuff2++
if (doExtraStuff2 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+00E4}
}
return

extraStuffTimer2:
; stop doing extra stuff
doExtraStuff2 := 0
return

+a::
Send {Blind}{U+0041}
setTimer, extraStuffTimer3, -133
doExtraStuff3++
if (doExtraStuff3 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+00C4}
}
return

extraStuffTimer3:
; stop doing extra stuff
doExtraStuff3 := 0
return

o::
Send {Blind}{U+006F}
setTimer, extraStuffTimer4, -133
doExtraStuff4++
if (doExtraStuff4 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+00F6}
}
return

extraStuffTimer4:
; stop doing extra stuff
doExtraStuff4 := 0
return

+o::
Send {Blind}{U+004F}
setTimer, extraStuffTimer5, -133
doExtraStuff5++
if (doExtraStuff5 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+00D6}
}
return

extraStuffTimer5:
; stop doing extra stuff
doExtraStuff5 := 0
return

u::
Send {Blind}{U+0075}
setTimer, extraStuffTimer6, -133
doExtraStuff6++
if (doExtraStuff6 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+00FC}
}
return

extraStuffTimer6:
; stop doing extra stuff
doExtraStuff6 := 0
return

+u::
Send {Blind}{U+0055}
setTimer, extraStuffTimer7, -133
doExtraStuff7++
if (doExtraStuff7 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+00DC}
}
return

extraStuffTimer7:
; stop doing extra stuff
doExtraStuff7 := 0
return

;; Adding Caps Lock Checks

#If, GetKeyState("CapsLock", "T")
s::
Send {Blind}{U+0053}
setTimer, extraStuffTimer, -133
doExtraStuff++
if (doExtraStuff == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+1E9E}
}
return

#If, GetKeyState("CapsLock", "T")
a::
Send {Blind}{U+0041}
setTimer, extraStuffTimer2, -133
doExtraStuff2++
if (doExtraStuff2 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+00C4}
}
return

#If, GetKeyState("CapsLock", "T")
o::
Send {Blind}{U+004F}
setTimer, extraStuffTimer4, -133
doExtraStuff4++
if (doExtraStuff4 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+00D6}
}
return

#If, GetKeyState("CapsLock", "T")
u::
Send {Blind}{U+0055}
setTimer, extraStuffTimer6, -133
doExtraStuff6++
if (doExtraStuff6 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+00DC}
}
return

;; Adding Shift Checks

#If, GetKeyState("CapsLock", "T")
+s::
Send {Blind}{U+0073}
return

#If, GetKeyState("CapsLock", "T")
+a::
Send {Blind}{U+0061}
return

#If, GetKeyState("CapsLock", "T")
+o::
Send {Blind}{U+006F}
return

#If, GetKeyState("CapsLock", "T")
+u::
Send {Blind}{U+0075}
return

