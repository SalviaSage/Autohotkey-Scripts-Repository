#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;; Esperanto Typer Helper Script

;; A hotstrings only script that lets you type the circumflex letters by typing the circumflex from the keyboard.

;; You should only run one such typer helper script. For example, do not have the Spanish typer helper script running alongside Turkish typer helper script.

#persistent
#singleInstance, Force

Menu, Tray, Icon, accessibilitycpl.dll, 11 ;; icon
Menu, Tray, Tip, % "EsperantoTyper`nScript"

:*C?OZ:u^::
SendInput {Blind}{U+016D}
return

:*C?OZ:U^::
SendInput {Blind}{U+016C}
return

:*C?OZ:c^::
SendInput {Blind}{U+0109}
return

:*C?OZ:C^::
SendInput {Blind}{U+0108}
return

:*C?OZ:g^::
SendInput {Blind}{U+011D}
return

:*C?OZ:G^::
SendInput {Blind}{U+011C}
return

:*C?OZ:h^::
SendInput {Blind}{U+0125}
return

:*C?OZ:H^::
SendInput {Blind}{U+0124}
return

:*C?OZ:j^::
SendInput {Blind}{U+0135}
return

:*C?OZ:J^::
SendInput {Blind}{U+0134}
return

:*C?OZ:s^::
SendInput {Blind}{U+015D}
return

:*C?OZ:S^::
SendInput {Blind}{U+015C}
return

