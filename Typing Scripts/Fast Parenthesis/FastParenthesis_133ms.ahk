;; FastParenthesis 133ms

;; Hit the '(' key on the keyboard twice within 133 milliseconds to get the '()' keys.
;; Hit the '[' key on the keyboard twice within 133 milliseconds to get the '[]' keys.
;; Hit the '{' key on the keyboard twice within 133 milliseconds to get the '{}' keys.

;; This helps in typing the parentheses fast since they are always used as doubles.

#persistent
#singleInstance, Force

Menu, Tray, Icon,  imageres.dll, 174 ;; icon
Menu, Tray, Tip, % "FastParenthesis`n133ms"

doExtraStuff := 0
doExtraStuff1 := 0
doExtraStuff2 := 0
return

$+9::
setTimer, extraStuffTimer, -133
Send {Blind}{U+0028}
doExtraStuff++
if (doExtraStuff == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+0028}
	Send {Blind}{U+0029}
	Send {Left}
}
return

extraStuffTimer:
doExtraStuff := 0
return

$[::
setTimer, extraStuffTimer1, -133
Send {Blind}{U+005B}
doExtraStuff1++
if (doExtraStuff1 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+005B}
	Send {Blind}{U+005D}
	Send {Left}
}
return

extraStuffTimer1:
doExtraStuff1 := 0
return

$+[::
setTimer, extraStuffTimer2, -133
Send {Blind}{U+007B}
doExtraStuff2++
if (doExtraStuff2 == 2) {
	Send {Blind}{BackSpace}
	Send {Blind}{BackSpace}
	Send {Blind}{U+007B}
	Send {Blind}{U+007D}
	Send {Left}
}
return

extraStuffTimer2:
doExtraStuff2 := 0
return

