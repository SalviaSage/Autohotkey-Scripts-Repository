; Portable script: works standalone or with Script Manager
#Requires AutoHotkey v2.0

; Triple Backtick Code Block Script
; Press CapsLock+\ three times quickly to insert code block
; (Using CapsLock+\ to avoid dead key issues)
; Intended for nordic keyboard layout

#SingleInstance Force
SendMode "Input"

; Simple tracking
global pressCount := 0
global timerActive := false

; CapsLock+\ hotkey (to avoid dead key issues)
CapsLock & \::
{
    global pressCount, timerActive

    ; Increment count
    pressCount += 1

    ; Debug
    ; ToolTip "Press: " . pressCount
    ; SetTimer () => ToolTip(), -200

    ; If this is the first press, start timer
    if (!timerActive) {
        timerActive := true
        SetTimer(ResetCounter, 300)
    }

    ; If we've reached 2 presses, create code block immediately
    if (pressCount >= 2) {
        SetTimer(ResetCounter, 0)  ; Cancel timer
        CreateCodeBlock()
        ResetCounter()
    }
}

; Function to create code block
CreateCodeBlock() {
    ; Save clipboard
    savedClip := ClipboardAll()

    ; Create code block
    A_Clipboard := "``````" . "`n" . "`n" . "``````"
    ClipWait 1

    ; Paste and position cursor
    SendInput "^v"
    Sleep 50
    SendInput "{Up}"

    ; Restore clipboard
    A_Clipboard := savedClip
}

; Function to reset counter
ResetCounter() {
    global pressCount, timerActive
    pressCount := 0
    timerActive := false
}
