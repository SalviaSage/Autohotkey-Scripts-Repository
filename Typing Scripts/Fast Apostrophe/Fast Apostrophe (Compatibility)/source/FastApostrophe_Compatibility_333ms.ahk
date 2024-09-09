;; FastApostrophe (COMPATIBILITY), Hold Version, 333ms
;; Made specifically for video game and other platforms where certain characters appear as empty white square boxes.

;; Press certain keys and hold for 333ms to send other keys.
;; A translingual program that aids in typing orthographical characters that are used across different languages.
;; Hit comma once to type the hair space, twice to type the zero width joiner, and thrice to type the non-breaking hyphen.

Menu, Tray, Icon, accessibilitycpl.dll, 11 ;; icon
Menu, Tray, Tip, % "Fast Apostrophe`n(Compatibility)`n333 ms version"

#include Lib\TapHoldManager.ahk

#SingleInstance force
transpositions := { "'": ["′", "″"] ;; 0
                 , """": ["“”", "‘’", "„“"] ;; 1
                  , ".": ["{U+0021}", "…", "·"] ;; 2
                  , "-": ["–", "—"] ;; 3
                  , "#": ["№", "²", "³"] ;; 4
                  , "%": ["‰"] ;; 5
                  , "^": ["°", "†", "‡"] ;; 6
                  , "@": ["§", "¶"] ;; 7
                  , "|": ["¦"] ;; 8
                  , "=": ["−", "×", "÷", "≠", "≥", "≤", "≈"] ;; 9
                  , "&": ["™", "®", "©"] ;; 10
                  , "/": ["{U+003F}"] ;; 11

;; FOUR QUOTATION MARKS ESCAPE ONE QUOTATION MARK.

;; 0 Prime, Double Prime
;; 1 Double Quotation Marks, Single Quotation Marks, European Style Quotation Marks
;; 2 Exclamation Mark, Ellipsis, Middle Dot (Interpunct)
;; 3 En-Dash, Em-Dash
;; 4 Numero Sign, Superscript Two, Superscript Three
;; 5 Per Mille Sign
;; 6 Degree Sign, Dagger, Double Dagger
;; 7 Section Sign, Pilcrow (Paragraph Sign)
;; 8 Broken Bar
;; 9 Minus Sign, Multiplication Sign, Division Sign, Not Equal To, Greater Than or Equal to, Less Than or Equal To, Almost Equal To
;; 10 Trademark Symbol, Registered Sign, Copyright Symbol
;; 11 Question Mark

                  , "?": ["¿"] ;; 1
                  , "!": ["{U+00A1}"] } ;; 2

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
