;; FastApostrophe, Hold Version, 500ms
;; Press certain keys and hold for 500ms to send other keys.
;; A translingual program that aids in typing orthographical characters that are used across different languages.
;; Hit comma once to type the hair space, twice to type the zero width joiner, thrice to type the non-breaking hyphen.

Menu, Tray, Icon, accessibilitycpl.dll, 11 ;; icon
Menu, Tray, Tip, % "Fast Apostrophe`n( Hairspaced )`n500 ms version"

#include Lib\TapHoldManager.ahk

#SingleInstance force
transpositions := { "'": ["ʼ", "ʻ", "′", "″", "‴", "⁗"]									;; 0
                  , """": ["“  ”{Left}{Left}", "‘  ’{Left}{Left}", "„  “{Left}{Left}"]	;; 1
				  , ".": ["…", "·", "•", "⁃", "▪", "‣"]									;; 2
                  , ",": [" ", "‍", "‑"]													;; 3
                  , "-": ["–", "—", "⸺", "⸻"]											;; 4
                  , "#": ["№", "°", "²", "³"]											;; 5
                  , "%": ["‰", "‱"]														;; 6
                  , "^": ["†", "‡"]														;; 7
                  , "@": ["§", "¶", "⸿", "※"]											;; 8
                  , "*": ["⚹", "⚹⚹⚹", "⁂"]												;; 9
                  , "|": ["‖", "¦"]														;; 10
                  , "=": ["×", "÷", "−", "≠", "≤", "≥", "≈"]							;; 11
                  , "/": ["⁄"]															;; 12

;; FOUR QUOTATION MARKS ESCAPE ONE QUOTATION MARK.

;; 0 Real Apostrophe (Not Typewriter Apostrophe), Okina (Reverse Apostrophe), Prime, Double Prime, Triple Prime, Quadruple Prime
;; 1 Double Quotation Marks, Single Quotation Marks, European Style Quotation Marks
;; 2 Ellipsis, Middle Dot (Interpunct), Bullet, Hyphen Bullet, Square Bullet, Triangular Bullet
;; 3 Hair Space, Zero-Width Joiner, Non-Breaking Hyphen
;; 4 En-Dash, Em-Dash, Two Em-Dash, Three Em Dash
;; 5 Numero Sign, Degree Sign, Superscript Two, Superscript Three
;; 6 Per Mille Sign, Per Ten Thousand Sign
;; 7 Dagger, Double Dagger
;; 8 Section Sign, Pilcrow (Paragraph Sign), Capitulum, Reference Mark
;; 9 Sextile, Dinkus, Asterism
;; 10 Double Vertical Bar, Broken Bar
;; 11 Multiplication Sign, Division Sign, Subtraction Sign, Not Equal To, Less Than or Equal To, Greater Than or Equal to, Almost Equal To
;; 12 Fraction Slash

;; CURLY BRACKETS NEED  TO ESCAPE AS WELL.

                  , "(": ["(  ){Left}{Left}"]																					;; 1
                  , "[": ["[  ]{Left}{Left}", "⌈  ⌉{Left}{Left}", "⌊  ⌋{Left}{Left}", "⸢  ⸣{Left}{Left}", "⸤  ⸥{Left}{Left}"]	;; 2
                  , "{": ["{{  }{}}{Left}{Left}"]																				;; 3
                  , "<": ["«  »{Left}{Left}", "‹  ›{Left}{Left}", "⟨  ⟩{Left}{Left}", "⧼  ⧽{Left}{Left}"]						;; 4

                  , ")": ["(  ){Left}{Left}"]																					;; 1
                  , "]": ["[  ]{Left}{Left}", "⌈  ⌉{Left}{Left}", "⌊  ⌋{Left}{Left}", "⸢  ⸣{Left}{Left}", "⸤  ⸥{Left}{Left}"]	;; 2
                  , "}": ["{{  }{}}{Left}{Left}"]																				;; 3
                  , ">": ["«  »{Left}{Left}", "‹  ›{Left}{Left}", "⟨  ⟩{Left}{Left}", "⧼  ⧽{Left}{Left}"] } 					;; 4

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
