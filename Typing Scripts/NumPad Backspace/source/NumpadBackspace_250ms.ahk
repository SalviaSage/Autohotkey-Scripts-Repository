;; NumpadBackspace Experimental, Hold Version, 250ms
;; Hold down the (-) key on the numpad erase words. Tap and hold to erase the whole line.

/*
comment reserved.
*/

Menu, Tray, Icon, accessibilitycpl.dll, 6 ;; icon
Menu, Tray, Tip, % "NumPad Backspace`n250 ms version"

#include lib\TapHoldManager.ahk

#SingleInstance force
transpositions := { "NumpadSub": ["{BS}"]} ;; EXPERIMENTAL

thm := new TapHoldManager(-1, -1, -1, "$*~") ;; TapTime / Prefix can now be set here
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
