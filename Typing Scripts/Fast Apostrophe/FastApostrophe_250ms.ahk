﻿;; FastApostrophe, Hold Version, 250ms
;; Press certain keys and hold for 250ms to send other keys.

;; Issue with the right key being sent needs to be resolved.
;; Further testing is necessary, especially with shift and caps lock.

Menu, Tray, Icon, accessibilitycpl.dll, 11 ;; icon
Menu, Tray, Tip, % "Fast Apostrophe`n250ms version"

#include Lib\TapHoldManager.ahk

#SingleInstance force
transpositions := { "'": ["ʼ", "′", "″", "‴", "⁗"] ;; Real apostrophe as opposed to typewriter apostrophe, double prime, triple prime, quadruple prime
                  , ".": ["…"]                     ;; Ellipsis
                  , ",": ["·", "ˈ", "ˌ" ]          ;; Interpunct (middle dot), IPA stress, IPA secondary stress
                  , ":": ["ː"]                     ;; Triangular colon
                  , "-": ["–", "—"]                ;; Dash, not hyphen
                  , "=": ["≠", "×", "÷"]           ;; Not equals to, division sign, multiplication sign

				;; Four quotation marks escape one quotation mark.
                  , """": ["“”{Left}", "‘’{Left}", "〃"]      ;; Double quotes, single quotes, ditto mark
                  , "(": ["(){Left}"]                         ;; Parentheses
                  , "[": ["[]{Left}"]                         ;; Brackets
                  , "{": ["{{}{}}{Left}"]                     ;; Curly Brackets ;; They need to escape as well.
                  , "<": ["«»{Left}", "⟨⟩{Left}", "⧼⧽{Left}"] ;; Guilemets, angular brackets, curly angular brackets

                  , ")": ["(){Left}"]                         ;; Parentheses
                  , "]": ["[]{Left}"]                         ;; Brackets
                  , "}": ["{{}{}}{Left}"]                     ;; Curly Brackets ;; They need to escape as well.
                  , ">": ["«»{Left}", "⟨⟩{Left}", "⧼⧽{Left}"] ;; Guilemets, angular brackets, curly angular brackets

                  , "!": ["¡{U+0021}{Left}"]                  ;; Inverted exclamation mark, used in Spanish
                  , "?": ["¿{U+003F}{Left}"] }                ;; Inverted question mark, used in Spanish

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

