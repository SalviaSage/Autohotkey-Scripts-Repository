;; FastQuotationMarks 125ms

;; Hit the " key on the keyboard twice within 125 milliseconds to get the “” keys.
;; left double quotation mark (U+201C) + right double quotation mark (U+201D)

;; This helps in typing more graphically accurate or graphically different quotation marks.
;; It is however a different character than the more popular " quotation mark character readily existing on the keyboards.
;; For that reason, it may fail at search engines.

#persistent
#singleInstance, Force

Menu, Tray, Icon, accessibilitycpl.dll, 11 ;; icon
Menu, Tray, Tip, % "FastQuotation`nMarks`n125ms"

doExtraStuff := 0
return

+'::
setTimer, extraStuffTimer, -125
Send {U+0022}
doExtraStuff++
if (doExtraStuff == 2) {
	Send {BackSpace}
	Send {BackSpace}
	Send {U+201C}
	Send {U+201D}
	Send {Left}
}
return

extraStuffTimer:
; stop doing extra stuff
doExtraStuff := 0
return
