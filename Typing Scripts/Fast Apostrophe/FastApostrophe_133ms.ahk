;; FastApostrophe & Quotation Marks 133ms

;; Hit the ' key on the keyboard twice within 133 milliseconds to get the ʼ key. (modifier letter apostrophe) (U+02BC)
;; Hit the " key on the keyboard twice within 133 milliseconds to get the “ ” keys. (left double quotation mark) (U+201C) + (right double quotation mark) (U+201D)
;; Hit the . key on the keyboard thrice (three times) within 150 milliseconds to get the '…' key. (horizontal ellipsis) (U+2026)
;; Hit the < key on the keyboard twice within 133 milliseconds to get the « » keys. (left-pointing double angle quotation mark) (U+00AB) + (right-pointing double angle quotation mark) (U+00BB)
;; Hit the ` key on the keyboard twice within 133 milliseconds to get the ` ` keys. (grave accent (U+0060) + grave accent (U+0060) (For fast code windows.)

;; This helps in typing a more graphically accurate or a graphically different apostrophe.
;; It is however a different character than the more popular apostrophe character readily existing on the keyboards.
;; For that reason, it may fail at search engines.

;; Hit the '(' key on the keyboard twice within 133 milliseconds to get the '()' keys.
;; Hit the '[' key on the keyboard twice within 133 milliseconds to get the '[]' keys.
;; Hit the '{' key on the keyboard twice within 133 milliseconds to get the '{}' keys.

;; This helps in typing the parentheses fast since they are always used as doubles.

#persistent
#singleInstance, Force

Menu, Tray, Icon,  imageres.dll, 174 ;; icon
Menu, Tray, Tip, % "FastApostrophe`n133ms"

doExtraStuff := 0
doExtraStuff1 := 0
doExtraStuff2 := 0
doExtraStuff3 := 0
doExtraStuff4 := 0
doExtraStuff5 := 0
doExtraStuff6 := 0
return

$'::
setTimer, extraStuffTimer, -133
Send {Blind}{U+0027}
doExtraStuff++
if (doExtraStuff == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+02BC}
}
return

extraStuffTimer:
; stop doing extra stuff
doExtraStuff := 0
return

$+'::
setTimer, extraStuffTimer1, -133
Send {Blind}{U+0022}
doExtraStuff1++
if (doExtraStuff1 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+201C}
	Send {Blind}{U+201D}
	Send {Left}
}
return

extraStuffTimer1:
; stop doing extra stuff
doExtraStuff1 := 0
return

$.::
setTimer, extraStuffTimer2, -150
Send {Blind}{U+002E}
doExtraStuff2++
if (doExtraStuff2 == 3) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+2026}
}
return

extraStuffTimer2:
; stop doing extra stuff
doExtraStuff2 := 0
return

$+,::
setTimer, extraStuffTimer3, -133
Send {Blind}{U+003C}
doExtraStuff3++
if (doExtraStuff3 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+00AB}
	Send {Blind}{U+00BB}
	Send {Left}
}
return

extraStuffTimer3:
; stop doing extra stuff
doExtraStuff3 := 0
return

$+9::
setTimer, extraStuffTimer4, -133
Send {Blind}{U+0028}
doExtraStuff4++
if (doExtraStuff4 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+0028}
	Send {Blind}{U+0029}
	Send {Left}
}
return

extraStuffTimer4:
doExtraStuff4 := 0
return

$[::
setTimer, extraStuffTimer5, -133
Send {Blind}{U+005B}
doExtraStuff5++
if (doExtraStuff5 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+005B}
	Send {Blind}{U+005D}
	Send {Left}
}
return

extraStuffTimer5:
doExtraStuff5 := 0
return

$+[::
setTimer, extraStuffTimer6, -133
Send {Blind}{U+007B}
doExtraStuff6++
if (doExtraStuff6 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+007B}
	Send {Blind}{U+007D}
	Send {Left}
}
return

extraStuffTimer6:
doExtraStuff6 := 0
return

$`::
setTimer, extraStuffTimer7, -133
Send {Blind}{U+0060}
doExtraStuff7++
if (doExtraStuff7 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+0060}
	Send {Blind}{U+0060}
	Send {Left}
}
return

extraStuffTimer7:
doExtraStuff7 := 0
return

