;; FastApostrophe & Quotation Marks 133ms

;; Hit the ' key on the keyboard twice within 133 milliseconds to get the ʼ key. (modifier letter apostrophe (U+02BC)
;; Hit the " key on the keyboard twice within 133 milliseconds to get the “” keys.
;; Hit the . key on the keyboard thrice (three times) within 150 milliseconds to get the '…' key. (horizontal ellipsis) (U+2026)

;; This helps in typing a more graphically accurate or a graphically different apostrophe.
;; It is however a different character than the more popular apostrophe character readily existing on the keyboards.
;; For that reason, it may fail at search engines.

#persistent
#singleInstance, Force

Menu, Tray, Icon,  imageres.dll, 174 ;; icon
Menu, Tray, Tip, % "FastApostrophe`n133ms"

doExtraStuff := 0
doExtraStuff1 := 0
return

'::
setTimer, extraStuffTimer, -133
Send {U+0027}
doExtraStuff++
if (doExtraStuff == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+02BC}
}
return

extraStuffTimer:
; stop doing extra stuff
doExtraStuff := 0
return

+'::
setTimer, extraStuffTimer1, -133
Send {U+0022}
doExtraStuff1++
if (doExtraStuff1 == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+201C}
	Send {U+201D}
	Send {Left}
}
return

extraStuffTimer1:
; stop doing extra stuff
doExtraStuff1 := 0
return

.::
setTimer, extraStuffTimer2, -150
Send {U+002E}
doExtraStuff2++
if (doExtraStuff2 == 3) {
	Send {BackSpace}
	Send {BackSpace}
	Send {BackSpace}
	Send {U+2026}
}
return

extraStuffTimer2:
; stop doing extra stuff
doExtraStuff2 := 0
return
