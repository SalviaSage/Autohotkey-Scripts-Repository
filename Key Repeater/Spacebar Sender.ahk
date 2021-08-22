;; Hotkeys Assigned: Home key.

;; Can check for a process.exe to be present if line 14-29 is in.
;; Press the Home key to toggle the sending of space with 50ms intervals. It loops.

Menu, Tray, Tip, % "Press the 'Home' key to send spacebar forever in a loop. Press it again to stop."

#NoEnv
#SingleInstance, Force
#Persistent
#MaxThreadsPerHotkey 2
SetTitleMatchMode, 2
DetectHiddenWindows, On

/*
SetTimer, ProcessCheckTimer, 3000
Return

ProcessCheckTimer:
Process, Exist, Game.exe
pid1 := ErrorLevel
If (!pid1)
{Process, Exist, script.exe
	pid2 := ErrorLevel
	If (pid2)
		Process, Close, %pid2%
	ExitApp}
return
*/

toggle = 0
home::
Toggle := !Toggle

While Toggle{
	Send {Space}
	SetKeyDelay, -1, 1
	sleep 50
	Send {Space}
	SetKeyDelay, -1, 1
	sleep 50
	Send {Space}
	SetKeyDelay, -1, 1
	sleep 50
	Send {Space}
	SetKeyDelay, -1, 1
	sleep 50
	Send {Space}
	SetKeyDelay, -1, 1
	sleep 50
}
return
