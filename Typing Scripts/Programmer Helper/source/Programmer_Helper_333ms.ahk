;; Programmer Helper, Hold Version, 333ms
;; Made specifically for typing source code.

;; Press certain keys and hold for 333ms to send other keys.

Menu, Tray, Icon, accessibilitycpl.dll, 11 ;; icon
Menu, Tray, Tip, % "Programmer Helper`n333 ms version"

#include Lib\TapHoldManager.ahk

#SingleInstance force
transpositions := { "``": ["~"] ;; 1
                   , "'": ["''{Left}", """""{Left}"] ;; 2
                  , """": ["""""{Left}"] ;; 3
                   , "\": ["|", "‖", "¦"] ;; 4
                   , "-": ["_"] ;; 5
                   , "=": ["{U+002B}"] ;; 6
                   , ";": [":"] ;; 7
                   , ",": ["<"] ;; 8
                   , ".": [">"] ;; 9
                   , "/": ["?"] ;; 10

;; FOUR QUOTATION MARKS ESCAPE ONE QUOTATION MARK.
;; ONE BACKTICK ESCAPES THE NEXT BACKTICK.

;; 1 Tilde
;; 2 Single Quotes
;; 3 Double Quotes
;; 4 Vertical Bar, Double Vertical Bar, Broken Bar
;; 5 Underscore
;; 6 Plus Sign
;; 7 Colon
;; 8 Less Than Sign
;; 9 Greater Than Sign
;; 10 Question Mark

;; CURLY BRACKETS NEED TO ESCAPE AS WELL.

                  , "(": ["(){Left}"] ;; 1
                  , "[": ["[]{Left}", "{{}{}}{Left}"] ;; 2
                  , "{": ["{{}{}}{Left}"] ;; 3
                  , "<": ["<>{Left}"] ;; 4

                  , ")": ["(){Left}"] ;; 1
                  , "]": ["[]{Left}", "{{}{}}{Left}"] ;; 2
                  , "}": ["{{}{}}{Left}"] ;; 3
                  , ">": ["<>{Left}"] ;; 4

;; 1 Parentheses
;; 2 Brackets, Curly Brackets
;; 3 Curly Brackets
;; 4 Angle Brackets

;; BELOW SECTION IS FOR FAST TYPING HEX FROM NUMPAD

                  , "Numpad1": ["a", "{U+0041}"] ;; A
                  , "Numpad2": ["b", "{U+0042}"] ;; B
                  , "Numpad3": ["c", "{U+0043}"] ;; C
                  , "Numpad4": ["d", "{U+0044}"] ;; D
                  , "Numpad5": ["e", "{U+0045}"] ;; E
                  , "Numpad6": ["f", "{U+0046}"] ;; F

                  , "NumpadDiv": ["{U+0025}"]  ;; modulo
                 , "NumpadMult": ["{U+005E}"]  ;; exponentiation
                  , "NumpadAdd": ["{U+003D}"]  ;; equals sign
                  , "NumpadDot": ["{U+002C}"]} ;; separator comma

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
