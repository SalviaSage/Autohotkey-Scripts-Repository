; Press F1 to copy selected text
F1::
Send, ^c
Sleep, 100
SoundPlay, C:\Windows\Media\notify.wav  ; Play a system notification sound
return

; Press F2 to paste the copied text
F2::
Send, ^v
return
