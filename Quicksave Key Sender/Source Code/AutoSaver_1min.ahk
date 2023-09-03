;; Hotkeys Assigned: F5 key.
;; Hotkeys Assigned: (Control + Alt + O) key.

;; This script tries to emulate the autosave behaviour that some games have.
;; Basically, it sends a specific key repeatedly with timed intervals, such as 5 minutes. This time interval can be changed on line 9 here.
;; The script is turned off by default and has to be turned on by pressing ctrl + alt + o.

;; User Data

Menu, Tray, Tip, AutoSaver 1min`n`nHit CTRL+ALT+O to send the F5 key every 1 minute.

{
	global QUICK_SAVE_KEY := "F5" ;; Set the key combo for quick saving

	global QUICK_SAVE_TIMEOUT := 60 * 1000 ;; 60 seconds, or 1 minute
;	global QUICK_SAVE_TIMEOUT := 180 * 1000 ;; 180 seconds, or 3 minutes
;	global QUICK_SAVE_TIMEOUT := 300 * 1000 ;; 300 seconds, or 5 minutes
;	global QUICK_SAVE_TIMEOUT := 600 * 1000 ;; 600 seconds, or 10 minutes

;; Setup Hotkeys
	Hotkey, IfWinActive, ;; Set hotkey to work wherever
	Hotkey, ^!o, ToggleScript ;; Set the key combo for toggling the script state
}

;; Active/Inactive Functions
{
;; This runs each time script is set to active state.
	Active() {
;; Set toggle
		ScriptActiveToggle = 1
;; Set the active icon
		Menu, Tray, Icon, Shell32.dll, 259 ;; Disk Icon
;; Your code here
		SetTimer, GameQuickSaveTimer, % QUICK_SAVE_TIMEOUT
	}

;; This runs each time script is set to inactive state.
	Inactive() {
;; Set toggle
		ScriptActiveToggle = 0
;; Set the inactive icon
		Menu, Tray, Icon, Shell32.dll, 110 ;; Red Inactive Icon
;; Your code here
		SetTimer, GameQuickSaveTimer, Off
	}
}

;; Setup Environment Data
{
	#NoEnv
	#SingleInstance, Force
	#Persistent
	#MaxThreadsPerHotkey 2
	SetTitleMatchMode, 2
	DetectHiddenWindows, On
}

;; Setup Timers
;{
;	SetTimer, ProcessCheckTimer, 3000
;}

;; Setup Script Data
{
	global ScriptActiveToggle := 1
}

Inactive()
return

;; Hotkey Label: Toggle Active/Inactive
ToggleScript:
	if (!ScriptActiveToggle) {
		Active()
	}
	else {
		Inactive()
	}
return

;; Timer Callback: Send Quick Save Key
GameQuickSaveTimer:
	Send { %QUICK_SAVE_KEY% }
return
