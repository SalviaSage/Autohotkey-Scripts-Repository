;; Checks for RPG_RT.exe to be present, press Home to toggle the sending of left and right followed by space 5 times. It loops.
;; Basically, this allows your characters to gain experience while you  are AFK (away from keyboard.)

#NoEnv
#SingleInstance, Force
#Persistent
#MaxThreadsPerHotkey 2
SetTitleMatchMode, 2
DetectHiddenWindows, On

SetTimer, ProcessCheckTimer, 3000
Return

ProcessCheckTimer:
Process, Exist, RPG_RT.exe ;; Rename this if the games process name is different. The script will quit if it can't find the process.
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
		Send {Left}
		SetKeyDelay ,-1,1
        sleep 250
		Send {Right}
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
		Send {Space}
		SetKeyDelay ,-1,1
        sleep 50
    }
return
