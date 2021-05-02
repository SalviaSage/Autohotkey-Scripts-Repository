;; Holdable Caps Lock

;; Changes the default toggleable behaviour of caps lock to holdable.
;; Also, still retains the toggleable behaviour, but this is now toggled by hitting the caps lock key twice, instead of once.
;; Activated by default. You can suspend it by right clicking the exclamation mark icon in the tray menu and hitting suspend.

;; v1.2 ;; Third release.

;; This script basically gives you one extra modifier key. The Caps Lock Key.
;; It is useful for keyboard layouts, especially caseless keyboard layouts that have a lot of letters.
;; So, this script would run in the background while one of those keyboard layout typing methods are active.
;; Then, it makes typing easier. You can think of it like a typer helper.

#persistent
#singleInstance, Force

Menu, Tray, Icon, Shell32.dll, 78 ;; icon
Menu, Tray, Tip, Holdable caps lock active / Toggle caps lock by hitting the caps lock key twice.

cap := 0
*CapsLock::
	SetCapsLockState On
	if (A_PriorHotkey == "~CapsLock Up" and A_TimeSincePriorHotkey <= 200) {
		cap := 1-cap
	}
return

~CapsLock Up::
	if (cap) {
		SetCapsLockState On
	} else {
		SetCapsLockState Off
	}
return
