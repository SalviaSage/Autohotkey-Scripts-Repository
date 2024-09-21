;; BabelPad Windows11 style line switching
;; Can change the direction of text and the caret by pressing control+leftshift or control+rightshift.

#NoEnv                      ;; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn                      ;; Enable warnings to assist with detecting common errors.
SendMode Input              ;; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ;; Ensures a consistent starting directory.

Menu, Tray, Icon, explorer.exe, 10 ;; icon

#SingleInstance force

^LShift::
  Send {Ctrl down}{Shift down}l{Shift up}{Ctrl up}
return

^RShift::
  Send {Ctrl down}{Shift down}r{Shift up}{Ctrl up}
return
