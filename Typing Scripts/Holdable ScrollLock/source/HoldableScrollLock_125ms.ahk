;; Holdable ScrollLock v1.6

;; Changes the default toggleable behaviour of Scroll-Lock to holdable.
;; Also, still retains the toggleable behaviour, but this is now toggled by hitting the scroll lock key twice, instead of once.
;; It has to be hit twice within 125ms to toggle.
;; Activated by default. You can suspend it by right clicking the program icon in the tray menu and hitting suspend.

;; This script basically gives you one extra modifier key. The Scroll-Lock Key.
;; It is useful for keyboard layouts, especially caseless alphabets that have a lot of letters.
;; So, this script would run in the background while one of those keyboard layout typing methods are active.
;; Then, it makes typing easier.

;; A bug with the modifier keys has been fixed in version 1.5.
;; v1.6: Recompilation.

#persistent
#singleInstance, Force

Menu, Tray, Icon, pifmgr.dll, 13 ;; icon
Menu, Tray, Tip, % "Holdable ScrollLock`n`125 ms version`n`nToggle ScrollLock by hitting the ScrollLock key twice."

scroll := 0
*ScrollLock::
	SetScrollLockState On
	if (A_PriorHotkey == "*ScrollLock Up" and A_TimeSincePriorHotkey <= 125) {
		scroll := 1-scroll
	}
return

*ScrollLock Up::
	if (scroll) {
		SetScrollLockState On
	} else {
		SetScrollLockState Off
	}
return
