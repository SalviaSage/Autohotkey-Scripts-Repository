;; What this script does is, it makes the pressed (held down) key sent repeatedly.
;; You can set the key and the speed with which it is sent below.

;setKeyDelay, 5, 5
;setMouseDelay, 5

$~lbutton::
	while (getKeyState("lbutton", "P"))
	{
		send, {lbutton} ;; Change the key being sent here.
		sleep, 10 ;;10 is 20 clicks sent per second, 5 is 25 clicks.
	}
return
