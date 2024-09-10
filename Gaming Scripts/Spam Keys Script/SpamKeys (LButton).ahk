#NoEnv ; For performance and compatibility with future AutoHotkey releases
SendMode Input ; For speed and reliability
SetBatchLines -1 ; No script sleep, for more consistent spam behavior. Default behavior is 10ms execution then 10ms sleep
ListLines Off ; Increase performance by a few percent by not logging the lines of code that are executed

Menu, Tray, Icon, ddores.dll, 28 ;; icon
Menu, Tray, Tip, % "Spam Keys (LButton)`n20 times-per-second`n`nCTRL+L TOGGLE"

global spam := false
spamHotkeys := ["LButton"]
;spamHotkeys := ["3", "f", "LButton"] ; Hold one of these to spam that key. Just add a key to the array to automatically make it a new spam hotkey

global BoundFuncCache := {} ; A collection of bound functions for use in Timer stopping. Func(f).Bind(k) seems to create an object and return a reference to it, without caching the result, so manual caching is required to reference the same object
for i, key in spamHotkeys { ; Creates hotkeys for each key in the array above
	BoundFuncCache[key] := Func("SendBlind").Bind(key)
	stopSpamBF := Func("StopSpam").Bind(BoundFuncCache[key])
	Hotkey, % "~*" . key . " Up", % stopSpamBF
	spamBF := Func("Spam").Bind(key) ; Bind(BoundFunc) the Key to the Spam function to use it as input for the Hotkey Command
	Hotkey, % "$*" . key, % spamBF ; $ to ensure Hotkeys can't trigger themselves
}

Spam(key){
	Send, % "{Blind}{" . key . " Down}" ; Required because ~ can't be used with KeyWait for blocking Auto-Repeat
	if (spam){
		tmp := BoundFuncCache[key] ; SetTimer doesn't support function references in expression mode, requiring a temporary variable and regular variable dereferencing
		SetTimer, %tmp%, 50 ; Delay between activations in ms. 50ms = 20 times per second. Should be good for most use-cases
		KeyWait, % key
	}
}
StopSpam(boundFunc){
	SetTimer, %boundFunc%, Off
}
SendBlind(key){ ; Function-wrapper for the Send Command
	Send, % "{Blind}{" . key . "}"
}

^L:: ; Ctrl+L toggles Spam On/Off
	spam := !spam
	if (spam)
		CenteredToolTip("Spam On")
	else {
		CenteredToolTip("Spam Off")
		for i, func in BoundFuncCache
			SetTimer, %func%, Off
	}
return

CenteredToolTip(text, duration = 999){ ; Duration in ms (MilliSeconds). Default value can be optionally overridden
	ToolTip, %text%, A_ScreenWidth/2, A_ScreenHeight/2
	SetTimer, RemoveToolTip, -%duration% ; Negative to only trigger once
}
RemoveToolTip(){
	ToolTip
}
