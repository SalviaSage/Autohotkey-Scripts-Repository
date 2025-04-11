;; Orthography Helper, Hold Version, 333ms
;; Press certain keys and hold for 333ms to send other keys.
;; A translingual program that aids in typing orthographical characters that are used across different languages.

Menu, Tray, Icon, accessibilitycpl.dll, 11 ;; icon
Menu, Tray, Tip, % "Orthography Helper`nHairspaced, No-Break`n333 ms version"

#include Lib\TapHoldManager.ahk

#SingleInstance force
transpositions := { "'": ["’  ‘{Right}{Right}{U+FEFF}{U+FEFF}{Right}"] ;;1
                 , """": ["”  “{Right}{Right}{U+FEFF}{U+FEFF}{Right}"] ;;2
                  , ";": [":"] ;;3
                  , "\": ["|", "‖", "¦", "⌇"] ;;4
                  , ",": ["·", "<"] ;;5
                  , ".": ["{U+0021}", "…", ">"] ;;6
                  , "/": ["{U+2E2E}", "–", "—"] ;;7

                 , "``": ["~"] ;;8
                  , "~": ["〜", "〰"] ;;9
                  , "$": ["¢", "€", "£"] ;;10
                  , "%": ["‰", "‱"] ;;11
                  , "^": ["¶", "§"] ;;12
                  , "&": ["†", "‡", "⹋"] ;;13
                  , "*": ["⚹", "⁂", "※"] ;;14
                  , "-": ["_", "{U+2011}"] ;;15
                  , "=": ["{U+002B}", "{U+2260}", "{U+2248}"] ;;16

;; FOUR QUOTATION MARKS ESCAPE ONE QUOTATION MARK.

;; 1 Single Quotation Marks, Okina (Reversed Apostrophe), Modifier Apostrophe
;; 2 Double Quotation Marks, European Style Quotation Marks
;; 3 Colon
;; 4 Vertical Bar, Double Vertical Bar, Broken Bar, Wavy Line
;; 5 Middle Dot, Less Than Sign
;; 6 Exclamation Mark, Ellipsis, Greater Than Sign
;; 7 Question Mark, En Dash, Em Dash
;; 8 Tilde
;; 9 Wave Dash, Wavy Dash
;; 10 Cent Sign, Euro Sign, Pound Sign
;; 11 Permille Sign, Per Ten thousand Sign
;; 12 Pilcrow (Paragrah Sign), Section Sign
;; 13 Dagger, Double Dagger, Triple Dagger
;; 14 Sextile, Asterism, Reference Mark
;; 15 Underscore, Non-breaking Hyphen
;; 16 Plus Sign, Not Equal Sign, Almost Equal Sign

                  , "(": ["(  ){Right}{Right}{U+FEFF}{U+FEFF}{Right}", "«  »{Right}{Right}{U+FEFF}{U+FEFF}{Right}"] ;;1
                  , "[": ["(  ){Right}{Right}{U+FEFF}{U+FEFF}{Right}", "[  ]{Right}{Right}{U+FEFF}{U+FEFF}{Right}", "{{}  {}}{Right}{Right}{U+FEFF}{U+FEFF}{Right}"] ;;2
                  , "{": ["{{}  {}}{Right}{Right}{U+FEFF}{U+FEFF}{Right}"] ;;3
                  , "<": ["«  »{Right}{Right}{U+FEFF}{U+FEFF}{Right}", "‹  ›{Right}{Right}{U+FEFF}{U+FEFF}{Right}", "⟨  ⟩{Right}{Right}{U+FEFF}{U+FEFF}{Right}", "⧼  ⧽{Right}{Right}{U+FEFF}{U+FEFF}{Right}"] ;;4

                  , ")": ["(  ){Right}{Right}{U+FEFF}{U+FEFF}{Right}", "«  »{Right}{Right}{U+FEFF}{U+FEFF}{Right}"] ;;1
                  , "]": ["(  ){Right}{Right}{U+FEFF}{U+FEFF}{Right}", "[  ]{Right}{Right}{U+FEFF}{U+FEFF}{Right}", "{{}  {}}{Right}{Right}{U+FEFF}{U+FEFF}{Right}"] ;;2
                  , "}": ["{{}  {}}{Right}{Right}{U+FEFF}{U+FEFF}{Right}"] ;;3
                  , ">": ["«  »{Right}{Right}{U+FEFF}{U+FEFF}{Right}", "‹  ›{Right}{Right}{U+FEFF}{U+FEFF}{Right}", "⟨  ⟩{Right}{Right}{U+FEFF}{U+FEFF}{Right}", "⧼  ⧽{Right}{Right}{U+FEFF}{U+FEFF}{Right}"]} ;;4

;; 1 Parentheses, Guillemets
;; 2 Brackets, Curly Brackets
;; 3 Curly Brackets
;; 4 Guillemets, Singular Guillemets, Angular Brackets, Curly Angular Brackets

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
