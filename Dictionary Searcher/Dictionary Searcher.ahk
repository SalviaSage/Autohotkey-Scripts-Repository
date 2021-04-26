;; This script, when it is running in the background, waits for you to highlight a word
;; then press ctrl+alt+w and it will search that word in the website www.en.wiktionary.org

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Menu, Tray, Icon, Shell32.dll, 247 ;; icon.

^!W::
{
Send, ^C
Sleep 50
Run, https://en.wiktionary.org/w/index.php?search=%clipboard%
Return
}
