;; Holdable Caps Lock
;; Changes the default toggleable behaviour of caps lock to holdable.
;; Activated by default, press ctrl+alt+t to de-activate, the tray icon will turn to the red icon (inactive) from the blue keyboard icon (active).

;; v1.0 ;; First Release ;;

{ ;; AUTOEXEC
	#persistent
	#singleInstance, Force
	Menu, Tray, Icon, Shell32.dll, 174 ;; active state icon (blue keyboard icon)
	toggle := 1
}
return

;; set ctrl+alt+t to toggle it on or off
^!t::
	toggle := !toggle
	;; toggle is 1
	if(toggle) {
		Menu, Tray, Icon, Shell32.dll, 174 ;; active state icon (blue keyboard icon)
	} else {
		;; toggle is 0
		Menu, Tray, Icon, Shell32.dll, 110  ;; inactive state icon (red icon)
	}
return

;; THE CODE BELOW WILL ONLY WORK IF TOGGLE IS == 1

;; BELOW ARE THE BASE KEYS.
;toggle := 1

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
