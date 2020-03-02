;; Windows prompts the user if they are sure that they want to change the extension of a file.
;; This script makes it so that as soon as Windows asks, yes is clicked.

#SingleInstance, Force  ;; Force single instance of script running.
#NoEnv  ;; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ;; Enable warnings to assist with detecting common errors.
SendMode Input  ;; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ;; Ensures a consistent starting directory.

;; create a group of window classes related to renaming files
GroupAdd, WindowGroup, ahk_class CabinetWClass ;; 'windows explorer' window class
GroupAdd, WindowGroup, ahk_class WorkerW ;; windows desktop window class for windows 7
GroupAdd, WindowGroup, ahk_class ExploreWClass ;; alternative class for 'windows explorer' ?
GroupAdd, WindowGroup, ahk_class Progman ;; windows desktop window class for windows 8+ ?

Menu, Tray, Icon, Shell32.dll, 177  ;; icon (arrow icon)

Return

;; only listen for these hotkeys if any of the windows from WindowGroup are active
#IfWinActive, ahk_group WindowGroup
;; ~ means listen for the hotkey without blocking it
~F2:: ;; listen for F2 being pressed
	SetTimer, Rename, 20 ;; check for confirmation window every 20 milliseconds
	SetTimer, Cancel, -15000 ;; if the window doesn't appear after 15 seconds, stop checking
Return

;; this is a label used with gosub or timers (notice the singular colon instead of double)
;; gosub will run the code under the label until 'Return' is found
Rename:
	if ( WinActive("ahk_class #32770") ) { ;; check if the popup window is active
		WinGetTitle, Title ;; get the title of the popup window
		if ( Title = "Rename" ) { ;; check if the title is "Rename"
			GoSub, Cancel ;; turn off the timers
			Send, y ;; send y to confirm the renaming
		}
	}
Return

Cancel:
	SetTimer, Rename, OFF
	SetTimer, Cancel, OFF
Return
