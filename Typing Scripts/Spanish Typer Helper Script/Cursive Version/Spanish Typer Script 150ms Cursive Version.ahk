#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;; Spanish Typer Helper Script Cursive Version

;; This script makes it easier to type extra Spanish letters and punctuation marks by hitting certain keys twice within a time-frame (150ms).
;; For example, hitting the n key twice gives us the ñ letter.
;; Hitting the ? key twice gives us the ¿? punctuation marks.
;; Hitting the vowel keys twice gives us accented vowel letters.

;; You should only run one such typer helper script. For example, do not have the Spanish typer helper script running alongside Turkish typer helper script.

#persistent
#singleInstance, Force

Menu, Tray, Icon, accessibilitycpl.dll, 11 ;; icon
Menu, Tray, Tip, % "SpanishTyper`nScript 150ms`nCursive`nVersion"

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

;; Code section for fast typing the Spanish accented vowel letters (small-case).
a::
Send {Blind}{U+1D4EA}
setTimer, extraStuffTimer, -150
doExtraStuff++
if (doExtraStuff == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓪́
}
return

extraStuffTimer:
; stop doing extra stuff
doExtraStuff := 0
return

e::
Send {Blind}{U+1D4EE}
setTimer, extraStuffTimer1, -150
doExtraStuff1++
if (doExtraStuff1 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓮́
}
return

extraStuffTimer1:
; stop doing extra stuff
doExtraStuff1 := 0
return

i::
Send {Blind}{U+1D4F2}
setTimer, extraStuffTimer2, -150
doExtraStuff2++
if (doExtraStuff2 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝜾́
}
return

extraStuffTimer2:
; stop doing extra stuff
doExtraStuff2 := 0
return

o::
Send {Blind}{U+1D4F8}
setTimer, extraStuffTimer3, -150
doExtraStuff3++
if (doExtraStuff3 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓸́
}
return

extraStuffTimer3:
; stop doing extra stuff
doExtraStuff3 := 0
return

u::
Send {Blind}{U+1D4FE}
setTimer, extraStuffTimer4, -150
doExtraStuff4++
if (doExtraStuff4 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓾́
}
return

extraStuffTimer4:
; stop doing extra stuff
doExtraStuff4 := 0
return

;; Code section for fast typing the Spanish accented vowel letters (capital-case).
+a::
Send {Blind}{U+1D4D0}
setTimer, extraStuffTimer5, -150
doExtraStuff5++
if (doExtraStuff5 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓐̄́
}
return

extraStuffTimer5:
; stop doing extra stuff
doExtraStuff5 := 0
return

+e::
Send {Blind}{U+1D4D4}
setTimer, extraStuffTimer6, -150
doExtraStuff6++
if (doExtraStuff6 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓔̄́
}
return

extraStuffTimer6:
; stop doing extra stuff
doExtraStuff6 := 0
return

+i::
Send {Blind}{U+1D4D8}
setTimer, extraStuffTimer7, -150
doExtraStuff7++
if (doExtraStuff7 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓘̄́
}
return

extraStuffTimer7:
; stop doing extra stuff
doExtraStuff7 := 0
return

+o::
Send {Blind}{U+1D4DE}
setTimer, extraStuffTimer8, -150
doExtraStuff8++
if (doExtraStuff8 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓞̄́
}
return

extraStuffTimer8:
; stop doing extra stuff
doExtraStuff8 := 0
return

+u::
Send {Blind}{U+1D4E4}
setTimer, extraStuffTimer9, -150
doExtraStuff9++
if (doExtraStuff9 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓤̄́
}
return

extraStuffTimer9:
; stop doing extra stuff
doExtraStuff9 := 0
return

;; Code section for fast typing the Spanish Enye letter.
n::
Send {Blind}{U+1D4F7}
setTimer, extraStuffTimer10, -150
doExtraStuff10++
if (doExtraStuff10 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓷̃
}
return

extraStuffTimer10:
; stop doing extra stuff
doExtraStuff10 := 0
return

+n::
Send {Blind}{U+1D4DD}
setTimer, extraStuffTimer11, -150
doExtraStuff11++
if (doExtraStuff11 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓝̄̃
}
return

extraStuffTimer11:
; stop doing extra stuff
doExtraStuff11 := 0
return

;; Code section for fast typing Spanish Exclamation Marks.
~+!::
setTimer, extraStuffTimer12, -150
doExtraStuff12++
if (doExtraStuff12 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+00A1}
	Send {Blind}{U+0021}
	Send {Left}
}
return

extraStuffTimer12:
; stop doing extra stuff
doExtraStuff12 := 0
return

;; Code section for fast typing Spanish Question Marks.
~+?::
setTimer, extraStuffTimer13, -150
doExtraStuff13++
if (doExtraStuff13 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+00BF}
	Send {Blind}{U+003F}
	Send {Left}
}
return

extraStuffTimer13:
; stop doing extra stuff
doExtraStuff13 := 0
return

;; Adding Caps Lock Checks

#If, GetKeyState("CapsLock", "T")
n::
Send {Blind}{U+1D4DD}
setTimer, extraStuffTimer10, -150
doExtraStuff10++
if (doExtraStuff10 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓝̄̃
}
return

#If, GetKeyState("CapsLock", "T")
a::
Send {Blind}{U+1D4D0}
setTimer, extraStuffTimer, -150
doExtraStuff++
if (doExtraStuff == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓐̄́
}
return

#If, GetKeyState("CapsLock", "T")
e::
Send {Blind}{U+1D4D4}
setTimer, extraStuffTimer1, -150
doExtraStuff1++
if (doExtraStuff1 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓔̄́
}
return

#If, GetKeyState("CapsLock", "T")
i::
Send {Blind}{U+1D4D8}
setTimer, extraStuffTimer2, -150
doExtraStuff2++
if (doExtraStuff2 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓘̄́
}
return

#If, GetKeyState("CapsLock", "T")
o::
Send {Blind}{U+1D4DE}
setTimer, extraStuffTimer3, -150
doExtraStuff3++
if (doExtraStuff3 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓞̄́
}
return

#If, GetKeyState("CapsLock", "T")
u::
Send {Blind}{U+1D4E4}
setTimer, extraStuffTimer4, -150
doExtraStuff4++
if (doExtraStuff4 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}𝓤̄́
}
return

;; Adding Shift Checks

#If, GetKeyState("CapsLock", "T")
+n::
Send {Blind}{U+1D4F7}
return

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

