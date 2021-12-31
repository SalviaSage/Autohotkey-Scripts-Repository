#NoEnv
#SingleInstance, Force
#Persistent

SetTitleMatchMode, 2
DetectHiddenWindows, On

SetTimer, ProcessCheckTimer, 3000
Return

ProcessCheckTimer:
Process, Exist, WoW.exe
pid1 := ErrorLevel
If (!pid1)
{Process, Exist, script.exe
	pid2 := ErrorLevel
	If (pid2)
		Process, Close, %pid2%
	ExitApp
}
Return

MButton::suspend

RButton::
{
	Sendinput, {Shift down}{RButton down}
	keywait, RButton
	Sendinput, {RButton up}{Shift up}
}
Return
