;; FastApostrophe (Right to Left), Hold Version, 200ms
;; Press certain keys and hold for 200ms to send other keys.
;; A translingual program that aids in typing orthographical characters that are used across different languages.
;; Hit comma once to type the hair space, twice to type the zero width joiner, and thrice to type the non-breaking hyphen.

Menu, Tray, Icon, accessibilitycpl.dll, 11 ;; icon
Menu, Tray, Tip, % "Fast Apostrophe`n( Right to Left )`n200 ms version"

#include Lib\TapHoldManager.ahk

#SingleInstance force
transpositions := { "'": ["ʽ", "′", "″", "‴", "⁗"] ;; 0
                 , """": ["”“{Right}", "’‘{Right}"] ;; 1
                  , ".": ["{U+0021}", "…", "·"] ;; 2
                  , "\": ["•", "⁃", "▪"] ;; 3
                  , ",": [" ", "‍"] ;; 4
                  , "-": ["–", "—", "⸺", "⸻"] ;; 5
                  , "~": ["〜", "〰"] ;; 6
                  , "#": ["№", "²", "³"] ;; 7
                  , "%": ["‰", "‱"] ;; 8
                  , "^": ["°", "†", "‡"] ;; 9
                  , "@": ["§", "¶", "⸿", "※"] ;; 10
                  , "*": ["⚹", "⁂"] ;; 11
                  , "|": ["‖", "¦", "⌇"] ;; 12
                  , "=": ["−", "×", "÷", "≠", "≥", "≤", "≈"] ;; 13
                  , "/": ["{U+2E2E}", "⁄"] ;; 14
                  , "&": ["™", "®", "©"] ;; 15

;; FOUR QUOTATION MARKS ESCAPE ONE QUOTATION MARK.

;; 0 Curly Apostrophe, Okina (Reversed Apostrophe), Prime, Double Prime, Triple Prime, Quadruple Prime
;; 1 Double Quotation Marks, Single Quotation Marks, European Style Quotation Marks
;; 2 Exclamation Mark, Ellipsis, Middle Dot (Interpunct)
;; 3 Bullet, Hyphen Bullet, Square Bullet
;; 4 Hair Space, Zero-Width Joiner
;; 5 En-Dash, Em-Dash, Two Em-Dash, Three Em Dash
;; 6 Wave Dash, Wavy Dash
;; 7 Numero Sign, Superscript Two, Superscript Three
;; 8 Per Mille Sign, Per Ten Thousand Sign
;; 9 Degree Sign, Dagger, Double Dagger
;; 10 Section Sign, Pilcrow (Paragraph Sign), Capitulum, Reference Mark
;; 11 Sextile, Asterism
;; 12 Double Vertical Bar, Broken Bar, Wavy Line
;; 13 Minus Sign, Multiplication Sign, Division Sign, Not Equal To, Greater Than or Equal to, Less Than or Equal To, Almost Equal To
;; 14 Question Mark, Fraction Slash
;; 15 Trademark Symbol, Registered Sign, Copyright Symbol

;; CURLY BRACKETS NEED TO ESCAPE AS WELL.

                  , "(": ["(){Right}"] ;; 1
                  , "[": ["[]{Right}", "⌈⌉{Right}", "⌊⌋{Right}", "⸢⸣{Right}", "⸤⸥{Right}"] ;; 2
                  , "{": ["{{}{}}{Right}"] ;; 3
                  , "<": ["«»{Right}", "‹›{Right}", "⟨⟩{Right}", "⧼⧽{Right}"] ;; 4

                  , ")": ["(){Right}"] ;; 1
                  , "]": ["[]{Right}", "⌈⌉{Right}", "⌊⌋{Right}", "⸢⸣{Right}", "⸤⸥{Right}"] ;; 2
                  , "}": ["{{}{}}{Right}"] ;; 3
                  , ">": ["«»{Right}", "‹›{Right}", "⟨⟩{Right}", "⧼⧽{Right}"] } ;; 4

;; 1 Parentheses
;; 2 Brackets, Ceiling Brackets, Floor Brackets, Half Brackets, Bottom Half Brackets
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
