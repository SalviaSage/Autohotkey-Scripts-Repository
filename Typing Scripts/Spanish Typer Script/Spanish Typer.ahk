;; SpanishTyperScript

;; This script makes it easier to type extra Spanish letters and punctuation marks by hitting certain keys twice within a time-frame (140ms).
;; For example, hitting the n key twice gives us the ñ letter.
;; Hitting the ? key twice gives us the ¿? punctuation marks.
;; Hitting the vowel keys twice gives us accented vowel letters.

;; You should only run one such Typer Script. For example, do not have the Spanish Typer Script running alongside Turkish typer Script.

#persistent
#singleInstance, Force

Menu, Tray, Icon, accessibilitycpl.dll, 11 ;; icon
Menu, Tray, Tip, % "SpanishTyper`nScript"

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
Send {U+0061}
setTimer, extraStuffTimer, -140
doExtraStuff++
if (doExtraStuff == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+00E1}
}
return

extraStuffTimer:
; stop doing extra stuff
doExtraStuff := 0
return

e::
Send {U+0065}
setTimer, extraStuffTimer1, -140
doExtraStuff1++
if (doExtraStuff1 == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+00E9}
}
return

extraStuffTimer1:
; stop doing extra stuff
doExtraStuff1 := 0
return

i::
Send {U+0069}
setTimer, extraStuffTimer2, -140
doExtraStuff2++
if (doExtraStuff2 == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+00ED}
}
return

extraStuffTimer2:
; stop doing extra stuff
doExtraStuff2 := 0
return

o::
Send {U+006F}
setTimer, extraStuffTimer3, -140
doExtraStuff3++
if (doExtraStuff3 == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+00F3}
}
return

extraStuffTimer3:
; stop doing extra stuff
doExtraStuff3 := 0
return

u::
Send {U+0075}
setTimer, extraStuffTimer4, -140
doExtraStuff4++
if (doExtraStuff4 == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+00FA}
}
return

extraStuffTimer4:
; stop doing extra stuff
doExtraStuff4 := 0
return

;; Code section for fast typing the Spanish accented vowel letters (capital-case).
+a::
Send {U+0041}
setTimer, extraStuffTimer5, -140
doExtraStuff5++
if (doExtraStuff5 == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+00C1}
}
return

extraStuffTimer5:
; stop doing extra stuff
doExtraStuff5 := 0
return

+e::
Send {U+0045}
setTimer, extraStuffTimer6, -140
doExtraStuff6++
if (doExtraStuff6 == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+00C9}
}
return

extraStuffTimer6:
; stop doing extra stuff
doExtraStuff6 := 0
return

+i::
Send {U+0049}
setTimer, extraStuffTimer7, -140
doExtraStuff7++
if (doExtraStuff7 == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+00CD}
}
return

extraStuffTimer7:
; stop doing extra stuff
doExtraStuff7 := 0
return

+o::
Send {U+004F}
setTimer, extraStuffTimer8, -140
doExtraStuff8++
if (doExtraStuff8 == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+00D3}
}
return

extraStuffTimer8:
; stop doing extra stuff
doExtraStuff8 := 0
return

+u::
Send {U+0055}
setTimer, extraStuffTimer9, -140
doExtraStuff9++
if (doExtraStuff9 == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+00DA}
}
return

extraStuffTimer9:
; stop doing extra stuff
doExtraStuff9 := 0
return

;; Code section for fast typing the Spanish Enye letter.
n::
Send {U+006E}
setTimer, extraStuffTimer10, -140
doExtraStuff10++
if (doExtraStuff10 == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+00F1}
}
return

extraStuffTimer10:
; stop doing extra stuff
doExtraStuff10 := 0
return

+n::
Send {U+004E}
setTimer, extraStuffTimer11, -140
doExtraStuff11++
if (doExtraStuff11 == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+00D1}
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
	Send {BackSpace}
	Send {BackSpace}
	Send {U+00A1}
	Send {U+0021}
	Send {Left}
}
return

extraStuffTimer12:
; stop doing extra stuff
doExtraStuff12 := 0
return

;; Code section for fast typing Spanish Question Marks.
~+?::
setTimer, extraStuffTimer13, -133
doExtraStuff13++
if (doExtraStuff13 == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+00BF}
	Send {U+003F}
	Send {Left}
}
return

extraStuffTimer13:
; stop doing extra stuff
doExtraStuff13 := 0
return
