;; FastApostrophe 125ms

;; Hit the ' key on the keyboard twice within 125 milliseconds to get the ʼ key. (modifier letter apostrophe (U+02BC)
;; This helps in typing a more graphically accurate or a graphically different apostrophe.
;; It is however a different character than the more popular apostrophe character readily existing on the keyboards.
;; For that reason, it may fail at search engines.

#persistent
#singleInstance, Force

Menu, Tray, Icon, accessibilitycpl.dll, 11 ;; icon
Menu, Tray, Tip, % "FastApostrophe`n125ms"

doExtraStuff := 0
return

'::
setTimer, extraStuffTimer, -125
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
