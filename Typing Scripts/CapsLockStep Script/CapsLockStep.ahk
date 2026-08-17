;; Makes it so that when caps lock is pressed and let go, caps lock turns on for the next key press, then turns itself off automatically.
;; If you hold caps lock down while typing, it stays on normally until you release it.
;; Press caps lock again while it's on (instead of typing a key) to turn it off right away.

#If GetKeyState("CapsLock", "T")
*CapsLock::
	SetCapsLockState, Off
	Try
		Input
Return
#If

*CapsLock::
	SetCapsLockState, On
	Input, Key, L1 M V
	If GetKeyState("CapsLock", "P")
		KeyWait, CapsLock
	SetCapsLockState, Off
Return
