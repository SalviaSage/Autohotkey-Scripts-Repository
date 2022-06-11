;; Turkish-German-Azeri Typer Script

;; This script makes it easier to type extra letters by hitting certain keys twice within a time-frame.

;; You should only run one such Typer Script. For example, do not have the Spanish Typer Script running alongside Turkish typer script.

#persistent
#singleInstance, Force

Menu, Tray, Icon, accessibilitycpl.dll, 11 ;; icon
Menu, Tray, Tip, % "TurkishTyper`nScript"

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

;; Code section for fast typing the letters with umlaut (small-case).
a::
Send {U+0061}
setTimer, extraStuffTimer, -140
doExtraStuff++
if (doExtraStuff == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+00E4}
}
return

extraStuffTimer:
; stop doing extra stuff
doExtraStuff := 0
return

o::
Send {U+006F}
setTimer, extraStuffTimer1, -140
doExtraStuff1++
if (doExtraStuff1 == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+00F6}
}
return

extraStuffTimer1:
; stop doing extra stuff
doExtraStuff1 := 0
return

u::
Send {U+0075}
setTimer, extraStuffTimer2, -140
doExtraStuff2++
if (doExtraStuff2 == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+00FC}
}
return

extraStuffTimer2:
; stop doing extra stuff
doExtraStuff2 := 0
return

;; Code section for fast typing the letters with umlaut (capital-case).
+a::
Send {U+0041}
setTimer, extraStuffTimer3, -140
doExtraStuff3++
if (doExtraStuff3 == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+00C4}
}
return

extraStuffTimer3:
; stop doing extra stuff
doExtraStuff3 := 0
return

+o::
Send {U+004F}
setTimer, extraStuffTimer4, -140
doExtraStuff4++
if (doExtraStuff4 == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+00D6}
}
return

extraStuffTimer4:
; stop doing extra stuff
doExtraStuff4 := 0
return

+u::
Send {U+0055}
setTimer, extraStuffTimer5, -140
doExtraStuff5++
if (doExtraStuff5 == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+00DC}
}
return

extraStuffTimer5:
; stop doing extra stuff
doExtraStuff5 := 0
return

;; Code section for fast typing the dotless i.
i::
Send {U+0069}
setTimer, extraStuffTimer6, -140
doExtraStuff6++
if (doExtraStuff6 == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+0131}
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
	Send {U+0130}
}
return

extraStuffTimer7:
; stop doing extra stuff
doExtraStuff7 := 0
return

;; Code section for fast typing the g breve.
g::
Send {U+0067}
setTimer, extraStuffTimer8, -140
doExtraStuff8++
if (doExtraStuff8 == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+011F}
}
return

extraStuffTimer8:
; stop doing extra stuff
doExtraStuff8 := 0
return

+g::
Send {U+0047}
setTimer, extraStuffTimer9, -140
doExtraStuff9++
if (doExtraStuff9 == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+011E}
}
return

extraStuffTimer9:
; stop doing extra stuff
doExtraStuff9 := 0
return

;; Code section for fast typing the letters with cedilla.
c::
Send {U+0063}
setTimer, extraStuffTimer10, -140
doExtraStuff10++
if (doExtraStuff10 == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+00E7}
}
return

extraStuffTimer10:
; stop doing extra stuff
doExtraStuff10 := 0
return

+c::
Send {U+0043}
setTimer, extraStuffTimer11, -140
doExtraStuff11++
if (doExtraStuff11 == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+00C7}
}
return

extraStuffTimer11:
; stop doing extra stuff
doExtraStuff11 := 0
return

s::
Send {U+0073}
setTimer, extraStuffTimer12, -140
doExtraStuff12++
if (doExtraStuff12 == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+015F}
}
return

extraStuffTimer12:
; stop doing extra stuff
doExtraStuff12 := 0
return

+s::
Send {U+0053}
setTimer, extraStuffTimer13, -140
doExtraStuff13++
if (doExtraStuff13 == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+015E}
}
return

extraStuffTimer13:
; stop doing extra stuff
doExtraStuff13 := 0
return

;; Code section for fast typing the Azeri ə.
e::
Send {U+0065}
setTimer, extraStuffTimer14, -140
doExtraStuff14++
if (doExtraStuff14 == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+0259}
}
return

extraStuffTimer14:
; stop doing extra stuff
doExtraStuff14 := 0
return

+e::
Send {U+0045}
setTimer, extraStuffTimer15, -140
doExtraStuff15++
if (doExtraStuff15 == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+018F}
}
return

extraStuffTimer15:
; stop doing extra stuff
doExtraStuff15 := 0
return

;; Code section for fast typing the German Eszett.
w::
Send {U+0077}
setTimer, extraStuffTimer16, -140
doExtraStuff16++
if (doExtraStuff16 == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+00DF}
}
return

extraStuffTimer16:
; stop doing extra stuff
doExtraStuff16 := 0
return

+w::
Send {U+0057}
setTimer, extraStuffTimer17, -140
doExtraStuff17++
if (doExtraStuff17 == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+1E9E}
}
return

extraStuffTimer17:
; stop doing extra stuff
doExtraStuff17 := 0
return
