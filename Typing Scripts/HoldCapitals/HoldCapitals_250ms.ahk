;; HoldCapitals, 250ms
;; Press the letter keys for 250ms to type them as capitals.
;; This makes it easier to type capitals.

Menu, Tray, Icon, accessibilitycpl.dll, 11 ;; icon
Menu, Tray, Tip, % "HoldCapitals`n250ms version"

#include Lib\TapHoldManager.ahk

#SingleInstance force
transpositions := { "a": ["A"]
                  , "b": ["B"]
                  , "c": ["C"]
                  , "d": ["D"]
                  , "e": ["E"]
                  , "f": ["F"]
                  , "g": ["G"]
                  , "h": ["H"]
                  , "i": ["I"]
                  , "j": ["J"]
                  , "k": ["K"]
                  , "l": ["L"]
                  , "m": ["M"]
                  , "n": ["N"]
                  , "o": ["O"]
                  , "p": ["P"]
                  , "q": ["Q"]
                  , "r": ["R"]
                  , "s": ["S"]
                  , "t": ["T"]
                  , "u": ["U"]
                  , "v": ["V"]
                  , "w": ["W"]
                  , "x": ["X"]
                  , "y": ["Y"]
                  , "z": ["Z"] }

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

