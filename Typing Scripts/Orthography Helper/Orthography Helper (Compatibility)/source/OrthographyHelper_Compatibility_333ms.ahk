;; Orthography Helper (Compatibility), Hold Version, 333ms
;; Press certain keys and hold for 333ms to send other keys.
;; A translingual program that aids in typing orthographical characters that are used across different languages.

Menu, Tray, Icon, accessibilitycpl.dll, 11 ;; icon
Menu, Tray, Tip, % "Orthography Helper`nCompatibility`n333 ms version"

#include Lib\TapHoldManager.ahk

#SingleInstance force
transpositions := { "'": ["‘’{Left}", "ʻ", "ʼ"] ;;1
                 , """": ["“”{Left}", "„“{Left}"] ;;2
                  , ";": [":"] ;;3
                  , "\": ["|", "‖", "¦"] ;;4
                  , ",": ["·", "<"] ;;5
                  , ".": ["{U+0021}", "…", ">"] ;;6
                  , "/": ["{U+003F}", "–", "—"] ;;7

                 , "``": ["~"] ;;8
                  , "#": ["№"] ;;9
                  , "$": ["¢", "€", "£"] ;;10
                  , "^": ["¶", "§"] ;;11
                  , "&": ["†", "‡"] ;;12
                  , "*": ["⚹", "⁂", "※"] ;;13
                  , "-": ["_", "{U+2011}"] ;;14
                  , "=": ["{U+002B}", "{U+2260}", "{U+2248}"] ;;15

;; FOUR QUOTATION MARKS ESCAPE ONE QUOTATION MARK.

;; 1 Single Quotation Marks, Okina (Reversed Apostrophe), Modifier Apostrophe
;; 2 Double Quotation Marks, European Style Quotation Marks
;; 3 Colon
;; 4 Vertical Bar, Double Vertical Bar, Broken Bar
;; 5 Middle Dot, Less Than Sign
;; 6 Exclamation Mark, Ellipsis, Greater Than Sign
;; 7 Question Mark, En Dash, Em Dash
;; 8 Tilde
;; 9 Numero Sign
;; 10 Cent Sign, Euro Sign, Pound Sign
;; 11 Pilcrow (Paragrah Sign), Section Sign
;; 12 Dagger, Double Dagger
;; 13 Sextile, Asterism, Reference Mark
;; 14 Underscore, Non-breaking Hyphen
;; 15 Plus Sign, Not Equal Sign, Almost Equal Sign

                  , "?": ["¿"] ;;1
                  , "!": ["{U+00A1}"] } ;;2

;; 1 Inverted Question Mark
;; 2 Inverted Exclamation Mark

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
