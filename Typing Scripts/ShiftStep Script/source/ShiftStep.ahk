;; Makes it so that when the shift key is pressed and let go, it will capitalise the next letter that is pressed.
;; Default is that you have to hold it down for the shift key to be active.

$*LShift:: 
	SendInput, {LShift Down}
	Input, Key, L1 M V
	If GetKeyState("LShift", "P")
		KeyWait, LShift
	SendInput, {LShift Up}
Return
