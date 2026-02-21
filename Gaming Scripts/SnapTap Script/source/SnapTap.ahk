#Requires AutoHotkey v2.0
InstallKeybdHook
#SingleInstance Force
#UseHook
#MaxThreadsPerHotkey 1
SetWorkingDir A_ScriptDir
A_MaxHotkeysPerInterval := 99000000
KeyHistory 0
ListLines False
SetControlDelay -1
SetKeyDelay -1, -1
SendMode "Input"
ProcessSetPriority "High"
A_HotkeyInterval := 0
MyCurrentTimerResolution := 0
DllCall("ntdll\ZwSetTimerResolution", "Int", 6000, "Int", 1, "Int*", &MyCurrentTimerResolution)


global lastKey := ""
global aKey := false
global dKey := false

$a::
$d::
{
    Critical
    global lastKey, aKey, dKey
    thisHotkey := A_ThisHotkey
    currentKey := SubStr(thisHotkey, 2)
    if (currentKey != lastKey) {
        if (lastKey)
            Send "{" lastKey " up}"
        Send "{" currentKey " down}"
        lastKey := currentKey
    }
    %currentKey%Key := true
}

$a up::
$d up::
{
    Critical
    global lastKey, aKey, dKey
    thisHotkey := A_ThisHotkey
    currentKey := SubStr(thisHotkey, 2, 1)
    %currentKey%Key := false
    otherKey := (currentKey = "a") ? "d" : "a"

    if (%otherKey%Key) {
        Send "{" currentKey " up}{" otherKey " down}"
        lastKey := otherKey
    } else {
        Send "{" currentKey " up}"
        lastKey := ""
    }
}