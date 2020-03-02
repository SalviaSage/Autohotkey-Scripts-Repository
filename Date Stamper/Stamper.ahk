;; Press the ctrl+shift+function keys to type in the current time or date.
;; It will only be sent once the keys that are pressed are let go.

Menu, Tray, Icon, Shell32.dll, 160 ;; icon.

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

^+f1:: ;; Inserts the current date in ISO format. (YYYY-MM-DD)
KeyWait, Shift
KeyWait, Control
KeyWait, f1
FormatTime, TimeString,, yyyy-MM-dd
Send %TimeString%
return

^+f2:: ;; Inserts the current date in long format. (NameOfDay, NameOfMonth D, YYYY)
KeyWait, Shift
KeyWait, Control
KeyWait, f2
FormatTime, TimeString,, LongDate
Send %TimeString%
return

^+f3:: ;; Inserts the name of the current day.
KeyWait, Shift
KeyWait, Control
KeyWait, f3
FormatTime, TimeString,, dddd
Send %TimeString%
return

^+f4:: ;; Inserts the name of the current month.
KeyWait, Shift
KeyWait, Control
KeyWait, f4
FormatTime, TimeString,, MMMM
Send %TimeString%
return

^+f5:: ;; Inserts the current time in the 12 hour format. (without seconds)
KeyWait, Shift
KeyWait, Control
KeyWait, f5
FormatTime, TimeString,, Time
Send %TimeString%
return

^+f6:: ;; Inserts the current time in the 24 hour format. (without seconds)
KeyWait, Shift
KeyWait, Control
KeyWait, f6
FormatTime, TimeString,, HH:mm
Send %TimeString%
return

^+f7:: ;; Inserts the current time in the 12 hour format. (with seconds)
KeyWait, Shift
KeyWait, Control
KeyWait, f7
FormatTime, TimeString,, hh:mm:ss tt
Send %TimeString%
return

^+f8:: ;; Inserts the current time in the 24 hour format. (with seconds)
KeyWait, Shift
KeyWait, Control
KeyWait, f8
FormatTime, TimeString,, HH:mm:ss
Send %TimeString%
return

^+f9:: ;; Inserts my own name.
KeyWait, Shift
KeyWait, Control
KeyWait, f9
Send Mr. Ozgun Oztekin
return
