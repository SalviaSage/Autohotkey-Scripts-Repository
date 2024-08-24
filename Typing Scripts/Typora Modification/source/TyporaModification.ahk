;; TyporaModification
;; Changes the default behaviour of creating new lines in Typora.

#NoEnv                      ;; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn                      ;; Enable warnings to assist with detecting common errors.
SendMode Input              ;; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ;; Ensures a consistent starting directory.

Menu, Tray, Icon, explorer.exe, 11 ;; icon

#SingleInstance force

#if WinActive("ahk_exe typora.exe")
Enter::send +{Enter}
+Enter::send {Enter}
NumpadEnter::send +{Enter}
+NumpadEnter::send {Enter}
#if
