;; Math Typer, Hold Version, 250ms
;; Press certain keys and hold for 250ms to send other keys.

;; Helps in typing some math related characters.

Menu, Tray, Icon, wmploc.dll, 103 ;; icon
Menu, Tray, Tip, % "Math Typer`n250ms version"

#include Lib\TapHoldManager.ahk

#SingleInstance force
transpositions := { "=": ["{U+2260}", "{U+2212}" "{U+00D7}", "{U+00F7}"] ;; not equals sign, minus sign, multiplication sign, division sign
				  , "*": ["{U+00B0}"] ;; Degree sign
				  , "%": ["{U+2030}", "{U+2031}"] ;; Permil, per ten thousand
				  , "/": ["{U+2044}"] } ;; Fraction slash

thm := new TapHoldManager(-1, -1, -1, "$*~")    ; TapTime / Prefix can now be set here
for k, t in transpositions {
  thm.Add(k, Func("Transpose").Bind(k))
}

~*Shift::shiftHeld := 1
~*Shift up::shiftHeld := 0

Transpose(key, isHold, taps, state){
    global transpositions, shiftHeld
    if (isHold && state){
      transposed := transpositions[key][taps]
      if (transposed == "")
        return
      if (shiftHeld || GetKeyState("CapsLock", "T")){
        StringUpper, transposed, transposed
      }
      Send % "{Blind}{Backspace " taps "}"
	  ;Send % "{Blind}" transposed
      Send % transposed
    }
}

