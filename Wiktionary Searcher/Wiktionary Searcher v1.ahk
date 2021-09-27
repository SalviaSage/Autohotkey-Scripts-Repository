/*
This script makes it so that upon hitting "ctrl + shift + alt + F",
the selected word gets copied and pasted into the Wiktionary.org search bar.
 */

;; There may be some issues or it may be changed later. But it does work otherwise.
;; Wiktionary Searcher v1

#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

Menu, Tray, Icon, imageres.dll, 8 ;; icon
Menu, Tray, Tip, % "Wiktionary Searcher: Select a word, then hit Ctrl + Shift + Alt + F."

^!+F::
	send, ^c
	sleep 50
	run, https://www.wiktionary.org
	sleep 500
	send, ^v
	send {Enter}
return
