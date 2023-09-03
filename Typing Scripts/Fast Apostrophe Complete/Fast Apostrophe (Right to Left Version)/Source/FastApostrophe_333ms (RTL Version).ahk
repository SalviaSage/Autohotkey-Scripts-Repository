;; FastApostrophe (Right to Left), Hold Version, 333ms
;; Press certain keys and hold for 333ms to send other keys.
;; A translingual program that aids in typing orthographical characters that are used across different languages.
;; Hit comma once to type the hair space, twice to type the zero width joiner, thrice to type the non-breaking hyphen.

Menu, Tray, Icon, accessibilitycpl.dll, 11 ;; icon
Menu, Tray, Tip, % "Fast Apostrophe`n( Right to Left )`n333 ms version"

#include Lib\TapHoldManager.ahk

#SingleInstance force
transpositions := { "'": ["ʽ", "′", "″", "‴", "⁗"]				;; 0
                 , """": ["”“{Right}", "’‘{Right}"]				;; 1
				  , ".": ["…", "·", "•", "⁃", "▪", "◂"]			;; 2
                  , ",": [" ", "‍"]								;; 3
                  , "-": ["–", "—", "⸺", "⸻"]					;; 4
                  , "~": ["〜", "〰"]							;; 5
                  , "#": ["№", "²", "³"]						;; 6
                  , "%": ["‰", "‱"]								;; 7
                  , "^": ["°", "†", "‡"]						;; 8
                  , "@": ["§", "¶", "⸿", "※"]					;; 9
                  , "*": ["⚹", "⁂"]								;; 10
                  , "|": ["‖", "¦", "⌇"]						;; 11
                  , "=": ["−", "×", "÷", "≠", "≥", "≤", "≈"]	;; 12
                  , "/": ["⁄"]									;; 13
                  , "&": ["™", "®", "©"]						;; 14

;; FOUR QUOTATION MARKS ESCAPE ONE QUOTATION MARK.

;; 0 Modifier Letter Reversed Comma (Reversed Apostrophe), Prime, Double Prime, Triple Prime, Quadruple Prime
;; 1 Double Quotation Marks, Single Quotation Marks,
;; 2 Ellipsis, Middle Dot (Interpunct), Bullet, Hyphen Bullet, Square Bullet, Black Left-Pointing Small Triangle
;; 3 Hair Space, Zero-Width Joiner
;; 4 En-Dash, Em-Dash, Two Em-Dash, Three Em Dash
;; 5 Wave Dash, Wavy Dash
;; 6 Numero Sign, Superscript Two, Superscript Three
;; 7 Per Mille Sign, Per Ten Thousand Sign
;; 8 Degree Sign, Dagger, Double Dagger
;; 9 Section Sign, Pilcrow (Paragraph Sign), Capitulum, Reference Mark
;; 10 Sextile, Asterism
;; 11 Double Vertical Bar, Broken Bar, Wavy Line
;; 12 Minus Sign, Multiplication Sign, Division Sign, Not Equal To, Greater Than or Equal to, Less Than or Equal To, Almost Equal To
;; 13 Fraction Slash
;; 14 Trademark Symbol, Registered Sign, Copyright Symbol

;; CURLY BRACKETS NEED  TO ESCAPE AS WELL.

                  , "(": ["(){Right}"]														;; 1
                  , "[": ["[]{Right}", "⌈⌉{Right}", "⌊⌋{Right}", "⸢⸣{Right}", "⸤⸥{Right}"]	;; 2
                  , "{": ["{{}{}}{Right}"]													;; 3
                  , "<": ["«»{Right}", "‹›{Right}", "⟨⟩{Right}", "⧼⧽{Right}"]				;; 4

                  , ")": ["(){Right}"]														;; 1
                  , "]": ["[]{Right}", "⌈⌉{Right}", "⌊⌋{Right}", "⸢⸣{Right}", "⸤⸥{Right}"]	;; 2
                  , "}": ["{{}{}}{Right}"]													;; 3
                  , ">": ["«»{Right}", "‹›{Right}", "⟨⟩{Right}", "⧼⧽{Right}"] } 			;; 4

;; 1 Parentheses
;; 2 Brackets, Ceiling Brackets, Floor Brackets, Half Brackets, Bottom Half Brackets
;; 3 Curly Brackets
;; 4 Guilemets, Singular Guilemets, Angular Brackets, Curly Angular Brackets

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
