;; Orthography Helper, Hold Version, 250ms
;; Press certain keys and hold for 250ms to send other keys.
;; A translingual program that aids in typing orthographical characters that are used across different languages.

Menu, Tray, Icon, accessibilitycpl.dll, 11 ;; icon
Menu, Tray, Tip, % "Orthography Helper`nHairspaced, No-Break`n250 ms version"

#include Lib\TapHoldManager.ahk

#SingleInstance force
transpositions := { "'": ["‘  ’{Left}{Left}{U+FEFF}{U+FEFF}{Left}", "ʻ", "ʼ"] ;;1
                 , """": ["“  ”{Left}{Left}{U+FEFF}{U+FEFF}{Left}", "„  “{Left}{Left}{U+FEFF}{U+FEFF}{Left}"] ;;2
                  , ";": [":"] ;;3
                  , "\": ["|", "‖", "¦", "⌇"] ;;4
                  , ",": ["·", "<"] ;;5
                  , ".": ["{U+0021}", "…", ">"] ;;6
                  , "/": ["{U+003F}", "–", "—"] ;;7

                 , "``": ["~"] ;;8
                  , "~": ["〜", "〰"] ;;9
                  , "#": ["№"] ;;10
                  , "$": ["¢", "€", "£"] ;;11
                  , "%": ["‰", "‱"] ;;12
                  , "^": ["¶", "§"] ;;13
                  , "&": ["†", "‡", "⹋"] ;;14
                  , "*": ["⚹", "⁂", "※"] ;;15
                  , "-": ["_", "{U+2011}"] ;;16
                  , "=": ["{U+002B}", "{U+2260}", "{U+2248}"] ;;17

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
;; 10 Numero Sign
;; 11 Cent Sign, Euro Sign, Pound Sign
;; 12 Permille Sign, Per Ten thousand Sign
;; 13 Pilcrow (Paragrah Sign), Section Sign
;; 14 Dagger, Double Dagger, Triple Dagger
;; 15 Sextile, Asterism, Reference Mark
;; 16 Underscore, Non-breaking Hyphen
;; 17 Plus Sign, Not Equal Sign, Almost Equal Sign

;; CURLY BRACKETS NEED TO ESCAPE AS WELL.
;; NEED TO USE QUESTION MARKS AND EXCLAMATION MARKS WITH UNICODE CODES AND TEST AGAIN.

                  , "(": ["(  ){Left}{Left}{U+FEFF}{U+FEFF}{Left}", "«  »{Left}{Left}{U+FEFF}{U+FEFF}{Left}"] ;;1
                  , "[": ["[  ]{Left}{Left}{U+FEFF}{U+FEFF}{Left}", "{{}  {}}{Left}{Left}{U+FEFF}{U+FEFF}{Left}"] ;;2
                  , "{": ["{{}  {}}{Left}{Left}{U+FEFF}{U+FEFF}{Left}"] ;;3
                  , "<": ["«  »{Left}{Left}{U+FEFF}{U+FEFF}{Left}", "‹  ›{Left}{Left}{U+FEFF}{U+FEFF}{Left}", "⟨  ⟩{Left}{Left}{U+FEFF}{U+FEFF}{Left}", "⧼  ⧽{Left}{Left}{U+FEFF}{U+FEFF}{Left}"] ;;4

                  , ")": ["(  ){Left}{Left}{U+FEFF}{U+FEFF}{Left}", "«  »{Left}{Left}{U+FEFF}{U+FEFF}{Left}"] ;;1
                  , "]": ["[  ]{Left}{Left}{U+FEFF}{U+FEFF}{Left}", "{{}{}}{Left}"] ;;2
                  , "}": ["{{}  {}}{Left}"] ;;3
                  , ">": ["«  »{Left}{Left}{U+FEFF}{U+FEFF}{Left}", "‹  ›{Left}{Left}{U+FEFF}{U+FEFF}{Left}", "⟨  ⟩{Left}{Left}{U+FEFF}{U+FEFF}{Left}", "⧼  ⧽{Left}{Left}{U+FEFF}{U+FEFF}{Left}"] ;;4

                  , "?": ["¿  ?{Left}{Left}{U+FEFF}{U+FEFF}{Left}", "¿¿  ??{Left}{Left}{Left}{U+FEFF}{U+FEFF}{Left}", "{U+00A1}{U+00BF}{U+200A}{U+200A}{U+003F}{U+0021}{Left}{Left}{Left}{U+FEFF}{U+FEFF}{Left}"] ;;5
                  , "!": ["{U+00A1}{U+200A}{U+200A}{U+0021}{Left}{Left}{U+FEFF}{U+FEFF}{Left}", "{U+00A1}{U+00A1}{U+200A}{U+200A}{U+0021}{U+0021}{Left}{Left}{Left}{U+FEFF}{U+FEFF}{Left}"]} ;;6

;; 1 Parentheses, Guillemets
;; 2 Brackets, Curly Brackets
;; 3 Curly Brackets
;; 4 Guillemets, Singular Guillemets, Angular Brackets, Curly Angular Brackets
;; 5 Spanish-Style Question Marks
;; 6 Spanish-Style Exclamation Marks

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
