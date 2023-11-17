;; Hotkeys Assigned: Space key.
;; Hotkeys Assigned: (Control + Alt + O) key.

;; This script spams a key for as long as it is toggled.
;; Basically, it sends a specific key repeatedly with timed intervals, such as 1 second. This time interval can be changed on line 15 here.
;; The script is turned off by default and has to be turned on by pressing ctrl + alt + o.

;; User Data

Menu, Tray, Tip, Key Spammer `n10 Second Version`n`nHit (Home) key to send the (Space) key every second`nHit (Home) key again to turn it off

{
	global SPAM_KEY := "Space" ;; Set the key combo for quick saving

;	global SPAM_TIMEOUT := 1 * 1000 ;; 1 second
;	global SPAM_TIMEOUT := 5 * 1000 ;; 5 seconds
	global SPAM_TIMEOUT := 10 * 1000 ;; 10 seconds
;	global SPAM_TIMEOUT := 30 * 1000 ;; 30 seconds

;; Setup Hotkeys
	Hotkey, IfWinActive, ;; Set hotkey to work wherever
	Hotkey, Home, ToggleScript ;; Set the key combo for toggling the script state
}

;; Active/Inactive Functions
{
;; This runs each time script is set to active state.
	Active() {
;; Set toggle
		ScriptActiveToggle = 1
;; Set the active icon
		Menu, Tray, Icon, Shell32.dll, 255 ;; ICON DESCRIPTION
;; Your code here
		SetTimer, SpamTimer, % SPAM_TIMEOUT
	}

;; This runs each time script is set to inactive state.
	Inactive() {
;; Set toggle
		ScriptActiveToggle = 0
;; Set the inactive icon
		Menu, Tray, Icon, Shell32.dll, 110 ;; Red Inactive Icon
;; Your code here
		SetTimer, SpamTimer, Off
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
SpamTimer:
	Send { %SPAM_KEY% }
return
