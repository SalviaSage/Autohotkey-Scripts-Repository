;; FastApostrophe, Hold Version, 333ms
;; Press certain keys and hold for 333ms to send other keys.
;; A translingual program that aids in typing orthographical characters that are used across different languages.
;; Hit comma once to type the hair space, twice to type the non-breaking space, thrice to type the non-breaking hyphen.

Menu, Tray, Icon, accessibilitycpl.dll, 11 ;; icon
Menu, Tray, Tip, % "Fast Apostrophe`n333ms version"

#include Lib\TapHoldManager.ahk

#SingleInstance force
transpositions := { "'": ["ʼ", "ʻ", "′", "″", "‴", "⁗"] ;; Real Apostrophe (Not Typewriter Apostrophe), Okina(Reverse Apostrophe), Prime, Double Prime, Triple Prime, Quadruple Prime
                  , ".": ["…", "·", "•"]                ;; Ellipsis, Middle Dot (Interpunct), Bullet
                  , ",": [" ", " ", "‑"]                ;; Hair Space, No-Break Space, Non-Breaking Hyphen
                  , ":": ["⁝"]                          ;; Tricolon
                  , "-": ["–", "—", "⸺", "⸻", "⸻⸻⸻"]    ;; En-Dash, Em-Dash, Two Em-Dash, Three Em Dash, Dash Line
                  , "#": ["№", "°", "²", "³"]           ;; Numero Sign, Degree Sign, Superscript Two, Superscript Three
                  , "%": ["‰", "‱"]                     ;; Per Mille Sign, Per Ten Thousand Sign
                  , "^": ["†", "‡"]                     ;; Dagger, Double Dagger
                  , "@": ["§", "¶", "⸿", "※"]          ;; Section Sign, Pilcrow (Paragraph Sign), Capitulum, Reference Mark
                  , "*": ["⚹", "⁂"]                     ;; Sextile, Asterism
                  , "|": ["‖", "¦"]                     ;; Double Vertical Bar, Broken Bar
                  , "=": ["×", "÷", "−", "≠", "≤", "≥", "≈"] ;; Multiplication Sign, Division Sign, Subtraction Sign, Not Equal To, Less Than or Equal To, Greater Than or Equal to, Almost Equal To

;; FOUR QUOTATION MARKS ESCAPE ONE QUOTATION MARK.
;; CURLY BRACKETS NEED  TO ESCAPE AS WELL.

                  , """": ["“”{Left}", "‘’{Left}"]      ;; Double Quotes, Single Quotes
                  , "(": ["(){Left}"]                   ;; Parentheses
                  , "[": ["[]{Left}"]                   ;; Brackets
                  , "{": ["{{}{}}{Left}"]               ;; Curly Brackets
                  , "<": ["«»{Left}", "‹›{Left}", "⟨⟩{Left}", "⧼⧽{Left}"] ;; Guilemets, Singular Guilemets, Angular Brackets, Curly Angular Brackets

                  , ")": ["(){Left}"]                   ;; Parentheses
                  , "]": ["[]{Left}"]                   ;; Brackets
                  , "}": ["{{}{}}{Left}"]               ;; Curly Brackets
                  , ">": ["«»{Left}", "‹›{Left}", "⟨⟩{Left}", "⧼⧽{Left}"] } ;; Guilemets, Singular Guilemets, Angular Brackets, Curly Angular Brackets

thm := new TapHoldManager(-1, -1, -1, "$*~")    ; TapTime / Prefix can now be set here
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
