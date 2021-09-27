#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

Menu, Tray, Icon, imageres.dll, 256
Menu, Tray, Tip, % "Line Deleter: Delete an entire line by pressing Ctrl + Shift + Delete."

;; Press Ctrl + Shift + Delete keys together to delete the entire line.
+^Del::Send {Home}+{End}{Del}{Shift Up}
