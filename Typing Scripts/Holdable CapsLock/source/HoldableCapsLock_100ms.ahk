;; Holdable CapsLock v1.6

;; Changes the default toggleable behaviour of Caps-Lock to holdable.
;; Also, still retains the toggleable behaviour, but this is now toggled by hitting the caps lock key twice, instead of once.
;; It has to be hit twice within 100ms to toggle.
;; Activated by default. You can suspend it by right clicking the program icon in the tray menu and hitting suspend.

;; This script basically gives you one extra modifier key. The Caps-Lock Key.
;; It is useful for keyboard layouts, especially caseless alphabets that have a lot of letters.
;; So, this script would run in the background while one of those keyboard layout typing methods are active.
;; Then, it makes typing easier.

;; A bug with the modifier keys has been fixed in version 1.5.
;; v1.6: Recompilation.

#persistent
#singleInstance, Force

Menu, Tray, Icon, mmcndmgr.dll, 56 ;; icon
Menu, Tray, Tip, % "Holdable CapsLock`n`100 ms version`n`nToggle CapsLock by hitting the CapsLock key twice."

cap := 0
*CapsLock::
	SetCapsLockState On
	if (A_PriorHotkey == "*CapsLock Up" and A_TimeSincePriorHotkey <= 100) {
		cap := 1-cap
	}
return

*CapsLock Up::
	if (cap) {
		SetCapsLockState On
	} else {
		SetCapsLockState Off
	}
return
