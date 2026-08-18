;; Orthography Helper (Compatibility), Hold Version, 250ms
;; Press certain keys and hold for 250ms to send other keys.
;; A translingual program that aids in typing orthographical characters that are used across different languages.

Menu, Tray, Icon, accessibilitycpl.dll, 11 ;; icon
Menu, Tray, Tip, % "Orthography Helper`nCompatibility`n250 ms version"

#include Lib\TapHoldManager.ahk

#SingleInstance force
transpositions := { "'": ["ʻ", "ʼ"] ;;1
                 , """": ["“”", "‘’", "„“", "‚‘"] ;;2
                  , ";": [":"] ;;3
                  , "\": ["|", "‖", "¦", "→"] ;;4
                  , ",": ["·"] ;;5
                  , ".": ["{U+0021}", "…"] ;;6
                  , "/": ["{U+003F}"] ;;7

                 , "``": ["~", "¶", "§"] ;;8
                  , "~": ["〜"] ;;9
                  , "#": ["№", "⚹"] ;;10
                  , "$": ["¢", "€", "£"] ;;11
                  , "%": ["‰", "‱"] ;;12
                  , "^": ["√", "∛"] ;;13
                  , "&": ["†", "‡", "⹋"] ;;14
                  , "*": ["⁂", "※"] ;;15
                  , "-": ["–", "—", "{U+2011}"] ;;16
                  , "=": ["{U+002B}", "{U+2260}", "{U+2248}"] ;;17

;; FOUR QUOTATION MARKS ESCAPE ONE QUOTATION MARK.

;; 1 Okina (Reversed Apostrophe), Modifier Apostrophe
;; 2 Double Quotation Marks, Single Quotation Marks, European Style Quotation Marks, European Style Quotation Marks (single)
;; 3 Colon
;; 4 Vertical Bar, Double Vertical Bar, Broken Bar, Rightwards Arrow
;; 5 Middle Dot
;; 6 Exclamation Mark, Ellipsis
;; 7 Question Mark
;; 8 Tilde, Pilcrow (Paragrah Sign), Section Sign
;; 9 Wave Dash
;; 10 Numero Sign, Sextile (star sign on phones)
;; 11 Cent Sign, Euro Sign, Pound Sign
;; 12 Permille Sign, Per Ten Thousand Sign
;; 13 Square Root Sign, Cube Root Sign
;; 14 Dagger, Double Dagger, Triple Dagger
;; 15 Asterism, Reference Mark
;; 16 En-Dash, Em-Dash, Non-Breaking Hyphen
;; 17 Plus Sign, Not Equal To Sign, Almost Equal To Sign

                  , "?": ["¿"] ;; 5
                  , "!": ["{U+00A1}"] ;; 6

;; 1 Parentheses, Guillemets, Singular Guillemets
;; 2 Brackets, Curly Brackets, Angle Brackets, Double Angle Brackets
;; 3 Curly Brackets, Angle Brackets, Double Angle Brackets
;; 4 Guillemets, Singular Guillemets

;; 5 Spanish-Style Question Marks, Spanish-Style Double Question Marks, Spanish-Style Question-Exclamation Marks
;; 6 Spanish-Style Exclamation Marks, Spanish-Style Double Exclamation Marks

                  , "Numpad1": ["¹", "₁"] ;; 1
                  , "Numpad2": ["²", "₂"] ;; 2
                  , "Numpad3": ["³", "₃"] ;; 3
                  , "Numpad4": ["⁴", "₄"] ;; 4
                  , "Numpad5": ["⁵", "₅"] ;; 5
                  , "Numpad6": ["⁶", "₆"] ;; 6
				  , "Numpad7": ["⁷", "₇"] ;; 7
                  , "Numpad8": ["⁸", "₈"] ;; 8
                  , "Numpad9": ["⁹", "₉"] ;; 9
                  , "Numpad0": ["⁰", "₀"] ;; 10

                  , "NumpadDiv": ["{U+00F7}"] ;; 11
                 , "NumpadMult": ["{U+00D7}"] ;; 12
                  , "NumpadAdd": ["{U+003D}"] ;; 13
                  , "NumpadSub": ["{U+2212}" "{U+2032}", "{U+2033}"] ;; 14
                  , "NumpadDot": ["{U+002C}", "{U+00B0}", "{U+2236}"]} ;; 15

;; 1 Superscript One, Subscript One
;; 2 Superscript Two, Subscript Two
;; 3 Superscript Three, Subscript Three
;; 4 Superscript Four, Subscript Four
;; 5 Superscript Five, Subscript Five
;; 6 Superscript Six, Subscript Six
;; 7 Superscript Seven, Subscript Seven
;; 8 Superscript Eight, Subscript Eight
;; 9 Superscript Nine, Subscript Nine
;; 10 Superscript Zero, Subscript Zero

;; 11 Division Sign
;; 12 Multiplication Sign
;; 13 Equals Sign
;; 14 Minus Sign, Prime, Double Prime
;; 15 Separator Comma, Degree, Ratio

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
