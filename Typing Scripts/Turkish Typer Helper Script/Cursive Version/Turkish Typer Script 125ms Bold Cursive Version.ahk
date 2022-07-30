#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;; Turkish Typer Helper Script - Bold Cursive Version

;; You should only run one such typer helper script. For example, do not have the Spanish typer helper script running alongside Turkish typer helper script.

#persistent
#singleInstance, Force

Menu, Tray, Icon, accessibilitycpl.dll, 11 ;; icon
Menu, Tray, Tip, % "TurkshTyper`nScript 125ms`nBold`nCursive`nVersion"

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
doExtraStuff14 := 0
doExtraStuff15 := 0
return

;; Code section for correctly typing the dotted and dotless i.

i::
Send {Blind}{U+1D4F2}
setTimer, extraStuffTimer, -125
doExtraStuff++
if (doExtraStuff == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+1D73E}
}
return

extraStuffTimer:
; stop doing extra stuff
doExtraStuff := 0
return

$+i::
Send {Blind}𝓘̄͘
setTimer, extraStuffTimer1, -125
doExtraStuff1++
if (doExtraStuff1 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+1D4D8}
}
return

extraStuffTimer1:
; stop doing extra stuff
doExtraStuff1 := 0
return

;; Code section for correctly typing the umlaut letters.

o::
Send {Blind}{U+1D4F8}
setTimer, extraStuffTimer2, -125
doExtraStuff2++
if (doExtraStuff2 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓸̈
}
return

extraStuffTimer2:
; stop doing extra stuff
doExtraStuff2 := 0
return

+o::
Send {Blind}{U+1D4DE}
setTimer, extraStuffTimer3, -125
doExtraStuff3++
if (doExtraStuff3 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓞̄̋
}
return

extraStuffTimer3:
; stop doing extra stuff
doExtraStuff3 := 0
return

u::
Send {Blind}{U+1D4FE}
setTimer, extraStuffTimer4, -125
doExtraStuff4++
if (doExtraStuff4 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓾̈
}
return

extraStuffTimer4:
; stop doing extra stuff
doExtraStuff4 := 0
return

+u::
Send {Blind}{U+1D4E4}
setTimer, extraStuffTimer5, -125
doExtraStuff5++
if (doExtraStuff5 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓤̄̋
}
return

extraStuffTimer5:
; stop doing extra stuff
doExtraStuff5 := 0
return

;; Code section for correctly typing the g breve.

g::
Send {Blind}{U+1D4F0}
setTimer, extraStuffTimer6, -125
doExtraStuff6++
if (doExtraStuff6 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓰̆
}
return

extraStuffTimer6:
; stop doing extra stuff
doExtraStuff6 := 0
return

+g::
Send {Blind}{U+1D4D6}
setTimer, extraStuffTimer7, -125
doExtraStuff7++
if (doExtraStuff7 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓖̅̅
}
return

extraStuffTimer7:
; stop doing extra stuff
doExtraStuff7 := 0
return

;; Code section for correctly typing the cedilla letters.

c::
Send {Blind}{U+1D4EC}
setTimer, extraStuffTimer8, -125
doExtraStuff8++
if (doExtraStuff8 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓬̡
}
return

extraStuffTimer8:
; stop doing extra stuff
doExtraStuff8 := 0
return

+c::
Send {Blind}{U+1D4D2}
setTimer, extraStuffTimer9, -125
doExtraStuff9++
if (doExtraStuff9 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓒̡
}
return

extraStuffTimer9:
; stop doing extra stuff
doExtraStuff9 := 0
return

s::
Send {Blind}{U+1D4FC}
setTimer, extraStuffTimer10, -125
doExtraStuff10++
if (doExtraStuff10 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓼̡
}
return

extraStuffTimer10:
; stop doing extra stuff
doExtraStuff10 := 0
return

+s::
Send {Blind}{U+1D4E2}
setTimer, extraStuffTimer11, -125
doExtraStuff11++
if (doExtraStuff11 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}̡𝓢
	}
return

extraStuffTimer11:
; stop doing extra stuff
doExtraStuff11 := 0
return

;; Code section for correctly typing the azeri schwa letter.

e::
Send {Blind}{U+1D4EE}
setTimer, extraStuffTimer12, -125
doExtraStuff12++
if (doExtraStuff12 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+025A}
}
return

extraStuffTimer12:
; stop doing extra stuff
doExtraStuff12 := 0
return

+e::
Send {Blind}{U+1D4D4}
setTimer, extraStuffTimer13, -125
doExtraStuff13++
if (doExtraStuff13 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+018F}
}
return

extraStuffTimer13:
; stop doing extra stuff
doExtraStuff13 := 0
return

;; Code section for correctly typing the circumflex letters.

a::
Send {Blind}{U+1D4EA}
setTimer, extraStuffTimer14, -125
doExtraStuff14++
if (doExtraStuff14 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓪̂
}
return

extraStuffTimer14:
; stop doing extra stuff
doExtraStuff14 := 0
return

+a::
Send {Blind}{U+1D4D0}
setTimer, extraStuffTimer15, -125
doExtraStuff15++
if (doExtraStuff15 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓐̄̂
}
return

extraStuffTimer15:
; stop doing extra stuff
doExtraStuff15 := 0
return

;; Code section for letters with circumflex.

:*C?OZ:𝓪^::
SendInput 𝓪̂
return

:*C?OZ:𝓐^::
SendInput 𝓐̄̂
return

:*C?OZ:𝓾^::
SendInput 𝓾̂
return

:*C?OZ:𝓤^::
SendInput 𝓤̄̂
return

:*C?OZ:𝓲^::
SendInput 𝜾̂
return

:*C?OZ:𝓘^::
SendInput {BackSpace}
SendInput {BackSpace}
SendInput 𝓘̄̂
return

;; Adding Caps Lock Checks

#If, GetKeyState("CapsLock", "T")
i::
Send {Blind}𝓘̄͘
setTimer, extraStuffTimer, -125
doExtraStuff++
if (doExtraStuff == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+1D4D8}
}
return

#If, GetKeyState("CapsLock", "T")
o::
Send {Blind}{U+1D4DE}
setTimer, extraStuffTimer2, -125
doExtraStuff2++
if (doExtraStuff2 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓞̄̋
}
return

#If, GetKeyState("CapsLock", "T")
u::
Send {Blind}{U+1D4E4}
setTimer, extraStuffTimer4, -125
doExtraStuff4++
if (doExtraStuff4 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓤̄̋
}
return

#If, GetKeyState("CapsLock", "T")
g::
Send {Blind}{U+1D4D6}
setTimer, extraStuffTimer6, -125
doExtraStuff6++
if (doExtraStuff6 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓖̅̅
}
return

#If, GetKeyState("CapsLock", "T")
c::
Send {Blind}{U+1D4D2}
setTimer, extraStuffTimer8, -125
doExtraStuff8++
if (doExtraStuff8 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓒̡
}
return

#If, GetKeyState("CapsLock", "T")
s::
Send {Blind}{U+1D4E2}
setTimer, extraStuffTimer10, -125
doExtraStuff10++
if (doExtraStuff10 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}̡𝓢
}
return

#If, GetKeyState("CapsLock", "T")
e::
Send {Blind}{U+1D4D4}
setTimer, extraStuffTimer12, -125
doExtraStuff12++
if (doExtraStuff12 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+018F}
}
return

#If, GetKeyState("CapsLock", "T")
a::
Send {Blind}{U+1D4D0}
setTimer, extraStuffTimer14, -125
doExtraStuff14++
if (doExtraStuff14 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓐̄̂
}
return

;; Adding Shift Checks

#If, GetKeyState("CapsLock", "T")
+a::
Send {Blind}{U+1D4EA}
return

#If, GetKeyState("CapsLock", "T")
+e::
Send {Blind}{U+1D4EE}
return

#If, GetKeyState("CapsLock", "T")
+i::
Send {Blind}{U+1D4F2}
return

#If, GetKeyState("CapsLock", "T")
+o::
Send {Blind}{U+1D4F8}
return

#If, GetKeyState("CapsLock", "T")
+u::
Send {Blind}{U+1D4FE}
return

#If, GetKeyState("CapsLock", "T")
+c::
Send {Blind}{U+1D4EC}
return

#If, GetKeyState("CapsLock", "T")
+g::
Send {Blind}{U+1D4F0}
return

#If, GetKeyState("CapsLock", "T")
+s::
Send {Blind}{U+1D4FC}
return

