;; Adapted and edited by me, from https://github.com/Hurstwood/Desktop-icons
;; I just added the tray icon and the tray tooltip.
;; Everything else is the same.

SetTitleMatchMode 2
#SingleInstance ignore

Menu, Tray, Icon, Shell32.dll, 95 ;; icon.
Menu, Tray, Tip, Press Win+Ctrl+Alt+D to hide desktop icons.

#^!D:: ;; Hotkey Definition: WinKey + Ctrl + Alt + D

	;https://stackoverflow.com/questions/53109281/what-is-the-windows-workerw-windows-and-what-creates-them
	ControlGet, HWND, Hwnd,, SysListView321, ahk_class WorkerW

;; Toggle between displaying and hiding the desktop icons
	If DllCall("IsWindowVisible", UInt, HWND)
		WinHide, ahk_id %HWND%
	Else
		WinShow, ahk_id %HWND%
return
