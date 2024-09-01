;; Line Deleter Experimental, Hold Version, 250ms
;; Hold down the backspace key or the delete key to erase words. Tap and hold to erase the whole line.

;; Line Deleter Experimental, Hold Version, 250ms
;; Hold down the backspace key or the delete key to erase words. Tap and hold to erase the whole line.

/*
I created this script before Windows 11 was released in 2021.
Then, there wasn't a way to delete whole lines and it seemed like this was a missing feature.
So I wrote this script to give the user a way to delete whole lines within texts.

However, now on Windows 11, we can delete the whole line from the left of the cursor blinker
if we hit ctrl+shift+backspace and the rest of the line after the cursor blinker (called a caret) if we hit ctrl+shift+delete.

However, it seems we still do not have a way to delete the whole line.
So, since those two options are there. I went and I added the alt modifier key in there to be able to delete whole lines.
Here, it doesn't matter whether backspace or delete is pressed because we want to delete the whole line.

The script works by sending the (Home) key which brings the caret to the start. Then it holds down (Shift) and sends (End) which
brings the caret to the end of the line, then it sends (Delete).
*/

Menu, Tray, Icon, accessibilitycpl.dll, 22 ;; icon
Menu, Tray, Tip, % "Line Deleter`n250 ms version"

#include Lib\TapHoldManager.ahk

#SingleInstance force
transpositions := { "BS": ["{Control Down}{BS}{Control Up}", "{Home}{Shift Down}{End}{Del}{Shift Up}" ] }	;; EXPERIMENTAL

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
