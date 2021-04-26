;; Holdable Caps Lock

;; Changes the default toggleable behaviour of caps lock to holdable.
;; Not activated by default. Press Ctrl+Alt+T to activate. The tray icon will turn to the red icon (active) from the blue icon (inactive).
;; v1.1 ;; Second Release

#persistent
#singleInstance, Force
Menu, Tray, Icon, Shell32.dll, 75 ;; inactive state icon
global toggle := 0

return

;; Set ctrl+alt+t to toggle it on or off.
^!t::
	toggle := !toggle
		;; toggle is 1
	if(toggle) {
		Menu, Tray, Icon, Shell32.dll, 74 ;; active state icon
	} else {
		;; toggle is 0
		Menu, Tray, Icon, Shell32.dll, 75  ;; inactive state icon
	}
return

;; THE CODE BELOW WILL ONLY WORK IF TOGGLE IS == 1

;; BELOW ARE THE BASE KEYS.

#if toggle
	*CapsLock::
		SetCapsLockState, On
		Hotkey, If, toggle
		Hotkey, % A_ThisHotkey, Off
	return

	*CapsLock up::
		SetCapsLockState, Off
		Hotkey, If, toggle
		Hotkey, % SubStr(A_ThisHotkey, 1, -3), On
	return
#if
