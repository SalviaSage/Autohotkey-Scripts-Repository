toggle = 0
home::
Toggle := !Toggle
return  ; add this here

#If (toggle)
*$~lbutton::
while GetKeyState("LButton", "P") {
	send, {lbutton} ;; Change the key being sent here.
	sleep, 10 ;; 10 is 20 clicks sent per second, 5 is 25 clicks.
}
return
