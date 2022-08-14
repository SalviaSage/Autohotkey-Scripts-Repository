;; Turkish Typer Helper, Hold Version, 200ms
;; Press certain keys and hold for 200ms to send other keys.

#include Lib\TapHoldManager.ahk

#SingleInstance force
transpositions := { a: ["á"]
                  , o: ["ö", "ő", "ó"]
                  , u: ["ü", "ű", "ú"]
                  , i: ["í"]
                  , e: ["é"] }

thm := new TapHoldManager(-1, -1, -1, "$*~")    ; TapTime / Prefix can now be set here
for k, t in transpositions {
  thm.Add(k, Func("Transpose").Bind(k))
}

~*Shift::shiftHeld := 1
~*Shift up:: shiftHeld := 0

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
      Send % "{Blind}" transposed
    }
}

