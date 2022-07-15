#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;; Turkish Typer Helper Script

;; You should only run one such typer helper script. For example, do not have the Spanish typer helper script running alongside Turkish typer helper script.

#persistent
#singleInstance, Force

Menu, Tray, Icon, accessibilitycpl.dll, 11 ;; icon
Menu, Tray, Tip, % "TurkshTyper`nScript 133ms`nReg. Version"

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
Send {Blind}{U+0069}
setTimer, extraStuffTimer, -133
doExtraStuff++
if (doExtraStuff == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+0131}
}
return

extraStuffTimer:
; stop doing extra stuff
doExtraStuff := 0
return

$+i::
Send {Blind}{U+0130}
setTimer, extraStuffTimer1, -133
doExtraStuff1++
if (doExtraStuff1 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+0049}
}
return

extraStuffTimer1:
; stop doing extra stuff
doExtraStuff1 := 0
return

;; Code section for correctly typing the umlaut letters.

o::
Send {Blind}{U+006F}
setTimer, extraStuffTimer2, -133
doExtraStuff2++
if (doExtraStuff2 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+00F6}
}
return

extraStuffTimer2:
; stop doing extra stuff
doExtraStuff2 := 0
return

+o::
Send {Blind}{U+004F}
setTimer, extraStuffTimer3, -133
doExtraStuff3++
if (doExtraStuff3 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+00D6}
}
return

extraStuffTimer3:
; stop doing extra stuff
doExtraStuff3 := 0
return

u::
Send {Blind}{U+0075}
setTimer, extraStuffTimer4, -133
doExtraStuff4++
if (doExtraStuff4 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+00FC}
}
return

extraStuffTimer4:
; stop doing extra stuff
doExtraStuff4 := 0
return

+u::
Send {Blind}{U+0055}
setTimer, extraStuffTimer5, -133
doExtraStuff5++
if (doExtraStuff5 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+00DC}
}
return

extraStuffTimer5:
; stop doing extra stuff
doExtraStuff5 := 0
return

;; Code section for correctly typing the g breve.

g::
Send {Blind}{U+0067}
setTimer, extraStuffTimer6, -133
doExtraStuff6++
if (doExtraStuff6 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+011F}
}
return

extraStuffTimer6:
; stop doing extra stuff
doExtraStuff6 := 0
return

+g::
Send {Blind}{U+0047}
setTimer, extraStuffTimer7, -133
doExtraStuff7++
if (doExtraStuff7 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+011E}
}
return

extraStuffTimer7:
; stop doing extra stuff
doExtraStuff7 := 0
return

;; Code section for correctly typing the cedilla letters.

c::
Send {Blind}{U+0063}
setTimer, extraStuffTimer8, -133
doExtraStuff8++
if (doExtraStuff8 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+00E7}
}
return

extraStuffTimer8:
; stop doing extra stuff
doExtraStuff8 := 0
return

+c::
Send {Blind}{U+0043}
setTimer, extraStuffTimer9, -133
doExtraStuff9++
if (doExtraStuff9 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+00C7}
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
	Send {Blind}{U+015F}
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
	Send {Blind}{U+015E}
}
return

extraStuffTimer11:
; stop doing extra stuff
doExtraStuff11 := 0
return

;; Code section for correctly typing the azeri schwa letter.

e::
Send {Blind}{U+0065}
setTimer, extraStuffTimer12, -133
doExtraStuff12++
if (doExtraStuff12 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+0259}
}
return

extraStuffTimer12:
; stop doing extra stuff
doExtraStuff12 := 0
return

+e::
Send {Blind}{U+0045}
setTimer, extraStuffTimer13, -133
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
Send {Blind}{U+0061}
setTimer, extraStuffTimer14, -133
doExtraStuff14++
if (doExtraStuff14 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+00E2}
}
return

extraStuffTimer14:
; stop doing extra stuff
doExtraStuff14 := 0
return

+a::
Send {Blind}{U+0041}
setTimer, extraStuffTimer15, -133
doExtraStuff15++
if (doExtraStuff15 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+00C2}
}
return

extraStuffTimer15:
; stop doing extra stuff
doExtraStuff15 := 0
return

;; Adding Caps Lock Checks

#If, GetKeyState("CapsLock", "T")
i::
Send {Blind}{U+0130}
setTimer, extraStuffTimer, -133
doExtraStuff++
if (doExtraStuff == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+0049}
}
return

#If, GetKeyState("CapsLock", "T")
o::
Send {Blind}{U+004F}
setTimer, extraStuffTimer2, -133
doExtraStuff2++
if (doExtraStuff2 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+00D6}
}
return

#If, GetKeyState("CapsLock", "T")
u::
Send {Blind}{U+0055}
setTimer, extraStuffTimer4, -133
doExtraStuff4++
if (doExtraStuff4 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+00DC}
}
return

#If, GetKeyState("CapsLock", "T")
g::
Send {Blind}{U+0047}
setTimer, extraStuffTimer6, -133
doExtraStuff6++
if (doExtraStuff6 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+011E}
}
return

#If, GetKeyState("CapsLock", "T")
c::
Send {Blind}{U+0043}
setTimer, extraStuffTimer8, -133
doExtraStuff8++
if (doExtraStuff8 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+00C7}
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
	Send {Blind}{U+015E}
}
return

#If, GetKeyState("CapsLock", "T")
e::
Send {Blind}{U+0045}
setTimer, extraStuffTimer12, -133
doExtraStuff12++
if (doExtraStuff12 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+018F}
}
return

#If, GetKeyState("CapsLock", "T")
a::
Send {Blind}{U+0041}
setTimer, extraStuffTimer14, -133
doExtraStuff14++
if (doExtraStuff14 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+00C2}
}
return

;; Adding Shift Checks

#If, GetKeyState("CapsLock", "T")
+a::
Send {Blind}{U+0061}
return

#If, GetKeyState("CapsLock", "T")
+e::
Send {Blind}{U+0065}
return

#If, GetKeyState("CapsLock", "T")
+i::
Send {Blind}{U+0069}
return

#If, GetKeyState("CapsLock", "T")
+o::
Send {Blind}{U+006F}
return

#If, GetKeyState("CapsLock", "T")
+u::
Send {Blind}{U+0075}
return

#If, GetKeyState("CapsLock", "T")
+c::
Send {Blind}{U+0063}
return

#If, GetKeyState("CapsLock", "T")
+g::
Send {Blind}{U+0067}
return

#If, GetKeyState("CapsLock", "T")
+s::
Send {Blind}{U+0073}
return

;; Code section for extra circumflex letters. (MISSING)

