;; FastApostrophe, Hold Version, 250ms
;; Press certain keys and hold for 250ms to send other keys.
;; A translingual program that aids in typing orthographical characters that are used across different languages.
;; Hit comma once to type the hair space, twice to type the zero width joiner, thrice to type the non-breaking hyphen.

Menu, Tray, Icon, accessibilitycpl.dll, 11 ;; icon
Menu, Tray, Tip, % "Fast Apostrophe`n250 ms version"

#include Lib\TapHoldManager.ahk

#SingleInstance force
transpositions := { "'": ["ʼ", "ʻ", "′", "″", "‴", "⁗"]				;; 0
                 , """": ["“  ”{Left}", "‘  ’{Left}", "„  “{Left}"]	;; 1
				  , ".": ["…", "·", "•", "⁃", "▪", "‣"]				;; 2
                  , ",": [" ", "‍"]									;; 3
                  , "-": ["‑", "⹀", "⸗"]								;; 4
                  , "~": ["–", "—", "⸺", "⸻", "〰"]					;; 5
                  , "#": ["№", "²", "³"]							;; 6
                  , "%": ["‰", "‱"]									;; 7
                  , "^": ["°", "†", "‡"]							;; 8
                  , "@": ["§", "¶", "⸿", "※"]						;; 9
                  , "*": ["⚹", "⁂"]									;; 10
                  , "|": ["‖", "¦", "⌇"]							;; 11
                  , "=": ["−", "×", "÷", "≠", "≥", "≤", "≈"]		;; 12
                  , "/": ["⁄"]										;; 13

;; FOUR QUOTATION MARKS ESCAPE ONE QUOTATION MARK.

;; 0 Curly Apostrophe, Okina (Reversed Apostrophe), Prime, Double Prime, Triple Prime, Quadruple Prime
;; 1 Double Quotation Marks, Single Quotation Marks, European Style Quotation Marks
;; 2 Ellipsis, Middle Dot (Interpunct), Bullet, Hyphen Bullet, Square Bullet, Triangular Bullet
;; 3 Hair Space, Zero-Width Joiner
;; 4 Non-Breaking Hyphen, Double Hyphen, Double Oblique Hyphen
;; 5 En-Dash, Em-Dash, Two Em-Dash, Three Em Dash, Wavy Dash
;; 6 Numero Sign, Superscript Two, Superscript Three
;; 7 Per Mille Sign, Per Ten Thousand Sign
;; 8 Degree Sign, Dagger, Double Dagger
;; 9 Section Sign, Pilcrow (Paragraph Sign), Capitulum, Reference Mark
;; 10 Sextile, Asterism
;; 11 Double Vertical Bar, Broken Bar, Wavy Line
;; 12 Minus Sign, Multiplication Sign, Division Sign, Not Equal To, Greater Than or Equal to, Less Than or Equal To, Almost Equal To
;; 13 Fraction Slash

;; CURLY BRACKETS NEED  TO ESCAPE AS WELL.
;; NEED TO USE QUESTION MARKS AND EXCLAMATION MARKS WITH UNICODE CODES AND TEST AGAIN.

                  , "(": ["(  ){Left}{Left}"]																					;; 1
                  , "[": ["[  ]{Left}{Left}", "⌈  ⌉{Left}{Left}", "⌊  ⌋{Left}{Left}", "⸢  ⸣{Left}{Left}", "⸤  ⸥{Left}{Left}"]	;; 2
                  , "{": ["{{  }{}}{Left}{Left}"]																				;; 3
                  , "<": ["«  »{Left}{Left}", "‹  ›{Left}{Left}", "⟨  ⟩{Left}{Left}", "⧼  ⧽{Left}{Left}"]						;; 4

                  , ")": ["(  ){Left}{Left}"]																					;; 1
                  , "]": ["[  ]{Left}{Left}", "⌈  ⌉{Left}{Left}", "⌊  ⌋{Left}{Left}", "⸢  ⸣{Left}{Left}", "⸤  ⸥{Left}{Left}"]	;; 2
                  , "}": ["{{  }{}}{Left}{Left}"]																				;; 3
                  , ">": ["«  »{Left}{Left}", "‹  ›{Left}{Left}", "⟨  ⟩{Left}{Left}", "⧼  ⧽{Left}{Left}"]						;; 4

				  , "?": ["¿  ?{Left}{Left}", "¿¿  ??{Left}{Left}{Left}", "{U+00A1}{U+00BF}{U+200A}{U+200A}{U+003F}{U+0021}{Left}{Left}{Left}"]		;; 5
				  , "!": ["{U+00A1}{U+200A}{U+200A}{U+0021}{Left}{Left}", "{U+00A1}{U+00A1}{U+200A}{U+200A}{U+0021}{U+0021}{Left}{Left}{Left}"] }	;; 6

;; 1 Parentheses
;; 2 Brackets, Ceiling Brackets, Floor Brackets, Half Brackets, Bottom Half Brackets
;; 3 Curly Brackets
;; 4 Guilemets, Singular Guilemets, Angular Brackets, Curly Angular Brackets
;; 5 Spanish style quotation marks
;; 6 Spanish style exclamation marks

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
