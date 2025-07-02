#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

GroupAdd GameList,ahk_exe XR_3DA.exe
GroupAdd GameList,ahk_exe xrEngine.exe

;...add more here...

#IfWinActive ahk_group GameList
  <!Tab::Return
#IfWinActive ;Turn off for any code following
