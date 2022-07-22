#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;; Polish Typer Helper Script

;; You should only run one such typer helper script. For example, do not have the Spanish typer helper script running alongside Turkish typer helper script.

#persistent
#singleInstance, Force

Menu, Tray, Icon, accessibilitycpl.dll, 11 ;; icon
Menu, Tray, Tip, % "PolishTyper`nScript 133ms`nReg. Version"

;; Variable Definitions
doExtraStuff := 0
doExtraStuff1 := 0
doExtraStuff2 := 0
doExtraStuff3 := 0
doExtraStuff4 := 0
doExtraStuff5 := 0
doExtraStuff6 := 0
doExtraStuff7 := 0
doExtraStuff8 := 0
doExtraStuff9 := 0
doExtraStuff10 := 0
doExtraStuff11 := 0
doExtraStuff12 := 0
doExtraStuff13 := 0
return

;; Code section for correctly typing the stroked l.

l::
Send {Blind}{U+006C}
setTimer, extraStuffTimer, -133
doExtraStuff++
if (doExtraStuff == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+0142}
}
return

extraStuffTimer:
; stop doing extra stuff
doExtraStuff := 0
return

+l::
Send {Blind}{U+004C}
setTimer, extraStuffTimer1, -133
doExtraStuff1++
if (doExtraStuff1 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+0141}
}
return

extraStuffTimer1:
; stop doing extra stuff
doExtraStuff1 := 0
return

;; Code section for correctly typing the ogonek letters.

a::
Send {Blind}{U+0061}
setTimer, extraStuffTimer2, -133
doExtraStuff2++
if (doExtraStuff2 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+0105}
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
	Send {Blind}{U+0104}
}
return

extraStuffTimer3:
; stop doing extra stuff
doExtraStuff3 := 0
return

e::
Send {Blind}{U+0065}
setTimer, extraStuffTimer4, -133
doExtraStuff4++
if (doExtraStuff4 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+0119}
}
return

extraStuffTimer4:
; stop doing extra stuff
doExtraStuff4 := 0
return

+e::
Send {Blind}{U+0045}
setTimer, extraStuffTimer5, -133
doExtraStuff5++
if (doExtraStuff5 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+0118}
}
return

extraStuffTimer5:
; stop doing extra stuff
doExtraStuff5 := 0
return

;; Code section for letters with the acute accent.

n::
Send {Blind}{U+006E}
setTimer, extraStuffTimer6, -133
doExtraStuff6++
if (doExtraStuff6 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+0144}
}
return

extraStuffTimer6:
; stop doing extra stuff
doExtraStuff6 := 0
return

+n::
Send {Blind}{U+004E}
setTimer, extraStuffTimer7, -133
doExtraStuff7++
if (doExtraStuff7 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+0143}
}
return

extraStuffTimer7:
; stop doing extra stuff
doExtraStuff7 := 0
return

o::
Send {Blind}{U+006F}
setTimer, extraStuffTimer8, -133
doExtraStuff8++
if (doExtraStuff8 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+00F3}
}
return

extraStuffTimer8:
; stop doing extra stuff
doExtraStuff8 := 0
return

+o::
Send {Blind}{U+004F}
setTimer, extraStuffTimer9, -133
doExtraStuff9++
if (doExtraStuff9 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+00D3}
}
return

extraStuffTimer9:
; stop doing extra stuff
doExtraStuff9 := 0
return

s::
Send {Blind}{U+0073}
setTimer, extraStuffTimer10, -133
doExtraStuff10++
if (doExtraStuff10 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+015B}
}
return

extraStuffTimer10:
; stop doing extra stuff
doExtraStuff10 := 0
return

+s::
Send {Blind}{U+0053}
setTimer, extraStuffTimer11, -133
doExtraStuff11++
if (doExtraStuff11 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+015A}
}
return

extraStuffTimer11:
; stop doing extra stuff
doExtraStuff11 := 0
return

z::
Send {Blind}{U+007A}
setTimer, extraStuffTimer12, -133
doExtraStuff12++
if (doExtraStuff12 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+017A}
}
return

extraStuffTimer12:
; stop doing extra stuff
doExtraStuff12 := 0
return

+z::
Send {Blind}{U+005A}
setTimer, extraStuffTimer13, -133
doExtraStuff13++
if (doExtraStuff13 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+0179}
}
return

extraStuffTimer13:
; stop doing extra stuff
doExtraStuff13 := 0
return

;; Code section for letters with the dot above.

:*C?OZ:z^.::
SendInput ż
return

:*C?OZ:Z^.::
SendInput Ż
return

;; Adding Caps Lock Checks

#If, GetKeyState("CapsLock", "T")
l::
Send {Blind}{U+004C}
setTimer, extraStuffTimer, -133
doExtraStuff++
if (doExtraStuff == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+0141}
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
	Send {Blind}{U+0104}
}
return

#If, GetKeyState("CapsLock", "T")
e::
Send {Blind}{U+0045}
setTimer, extraStuffTimer4, -133
doExtraStuff4++
if (doExtraStuff4 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+0118}
}
return

#If, GetKeyState("CapsLock", "T")
n::
Send {Blind}{U+004E}
setTimer, extraStuffTimer6, -133
doExtraStuff6++
if (doExtraStuff6 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+0143}
}
return

#If, GetKeyState("CapsLock", "T")
o::
Send {Blind}{U+004F}
setTimer, extraStuffTimer8, -133
doExtraStuff8++
if (doExtraStuff8 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+00D3}
}
return

#If, GetKeyState("CapsLock", "T")
s::
Send {Blind}{U+0053}
setTimer, extraStuffTimer10, -133
doExtraStuff10++
if (doExtraStuff10 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+015A}
}
return

#If, GetKeyState("CapsLock", "T")
z::
Send {Blind}{U+005A}
setTimer, extraStuffTimer12, -133
doExtraStuff12++
if (doExtraStuff12 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+0179}
}
return

;; Adding Shift Checks

#If, GetKeyState("CapsLock", "T")
+l::
Send {Blind}{U+006C}
return

#If, GetKeyState("CapsLock", "T")
+a::
Send {Blind}{U+0061}
return

#If, GetKeyState("CapsLock", "T")
+e::
Send {Blind}{U+0065}
return

#If, GetKeyState("CapsLock", "T")
+n::
Send {Blind}{U+006E}
return

#If, GetKeyState("CapsLock", "T")
+o::
Send {Blind}{U+006F}
return

#If, GetKeyState("CapsLock", "T")
+s::
Send {Blind}{U+0073}
return

#If, GetKeyState("CapsLock", "T")
+z::
Send {Blind}{U+007A}
return

