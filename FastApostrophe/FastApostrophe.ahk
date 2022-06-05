;; Fast Apostrophe, Hit the ' key on the keyboard twice within 125ms to type a graphically accurate apostrophe, fast.

#persistent
#singleInstance, Force

Menu, Tray, Icon, pifmgr.dll, 9 ;; icon
Menu, Tray, Tip, % "FastApostrophe"

'::

if okay > 0
{
	okay += 1
	Return
}

okay = 1

SetTimer, Timer, 125
Return

Timer:
SetTimer, Timer, off

if okay = 1
	{
	send, {U+0027}
	}

Else if okay = 2
	{
	send, {U+02BC}
	}

okay = 0
Return
