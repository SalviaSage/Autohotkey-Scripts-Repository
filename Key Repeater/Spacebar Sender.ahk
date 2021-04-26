; Checks for Game.exe to be present, press Home to toggle the sending of space with 50ms intervals. It loops.

#NoEnv
#SingleInstance, Force
#Persistent
#MaxThreadsPerHotkey 2
SetTitleMatchMode, 2
DetectHiddenWindows, On
 
SetTimer, ProcessCheckTimer, 3000
Return
 
ProcessCheckTimer:
Process, Exist, Game.exe
pid1 := ErrorLevel
If (!pid1)
{  Process, Exist, script.exe
   pid2 := ErrorLevel
   If (pid2)
      Process, Close, %pid2%
   ExitApp
}
Return

toggle = 0
home::
    Toggle := !Toggle
    While Toggle{
        Send {Space}
		SetKeyDelay ,-1,1
        sleep 50
		Send {Space}
		SetKeyDelay ,-1,1
        sleep 50
		Send {Space}
		SetKeyDelay ,-1,1
        sleep 50
		Send {Space}
		SetKeyDelay ,-1,1
        sleep 50
		Send {Space}
		SetKeyDelay ,-1,1
        sleep 50
    }
return