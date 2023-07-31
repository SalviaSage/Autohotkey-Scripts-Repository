;; Wiktionary Searcher

;; This script makes it so that upon hitting "ctrl + shift + alt + F" the selected word gets copied and pasted into the Wiktionary.org search bar.
;; In this language specific version, we target the language we are interested in.


#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

Menu, Tray, Icon, imageres.dll, 8 ;; icon
Menu, Tray, Tip, % "Wiktionary Searcher ( Spanish )`n`nHighlight a word and press :`nCtrl + Shift + Alt + F"

^!+F::
	send, ^{c}
	sleep 100
	run, https://en.wiktionary.org/w/index.php?search=&title=Special`%3ASearch&go=Go
	sleep 400
	send, !+{f}
	sleep 100
	send, !+{f}
	send, ^{v}
	sleep 100
	send, {#}
	send, Spanish
	send {Enter}
return
