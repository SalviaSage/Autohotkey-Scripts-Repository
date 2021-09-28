;; Hotkeys Assigned: (Control + Shift + F1) key.
;; Hotkeys Assigned: (Control + Shift + F2) key.
;; Hotkeys Assigned: (Control + Shift + F3) key.
;; Hotkeys Assigned: (Control + Shift + F4) key.
;; Hotkeys Assigned: (Control + Shift + F5) key.
;; Hotkeys Assigned: (Control + Shift + F6) key.
;; Hotkeys Assigned: (Control + Shift + F7) key.
;; Hotkeys Assigned: (Control + Shift + F8) key.

;; Press the Ctrl + Shift + Function keys to type in the current time or date.
;; It will only be sent once the keys that are pressed are let go.

Menu, Tray, Tip, % "Stamper: Hit Ctrl + Shift + F1-F4 to send the current date.`nHit Ctrl + Shift + F5-F8 to send the current time."
Menu, Tray, Icon, Shell32.dll, 13 ;; icon.

#InstallKeybdHook
#InstallMouseHook
#Persistent
#SingleInstance, Force
#UseHook
SetBatchLines, -1
SetTitleMatchMode, 2

#NoEnv ;; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn ;; Enable warnings to assist with detecting common errors.
SendMode Input ;; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ;; Ensures a consistent starting directory.

^+F1:: ;; Inserts the current date in ISO format. (YYYY-MM-DD)
KeyWait, Shift
KeyWait, Control
KeyWait, F1
FormatTime, TimeString,, yyyy-MM-dd
Send %TimeString%
return

^+F2:: ;; Inserts the current date in long format. (NameOfDay, NameOfMonth D, YYYY)
KeyWait, Shift
KeyWait, Control
KeyWait, F2
FormatTime, TimeString,, LongDate
Send %TimeString%
return

^+F3:: ;; Inserts the name of the current day.
KeyWait, Shift
KeyWait, Control
KeyWait, F3
FormatTime, TimeString,, dddd
Send %TimeString%
return

^+F4:: ;; Inserts the name of the current month.
KeyWait, Shift
KeyWait, Control
KeyWait, F4
FormatTime, TimeString,, MMMM
Send %TimeString%
return

^+F5:: ;; Inserts the current time in the 12 hour format without seconds.
KeyWait, Shift
KeyWait, Control
KeyWait, F5
FormatTime, TimeString,, Time
Send %TimeString%
return

^+F6:: ;; Inserts the current time in the 24 hour format without seconds.
KeyWait, Shift
KeyWait, Control
KeyWait, F6
FormatTime, TimeString,, HH:mm
Send %TimeString%
return

^+F7:: ;; Inserts the current time in the 12 hour format with seconds.
KeyWait, Shift
KeyWait, Control
KeyWait, F7
FormatTime, TimeString,, hh:mm:ss tt
Send %TimeString%
return

^+F8:: ;; Inserts the current time in the 24 hour format with seconds.
KeyWait, Shift
KeyWait, Control
KeyWait, F8
FormatTime, TimeString,, HH:mm:ss
Send %TimeString%
return
