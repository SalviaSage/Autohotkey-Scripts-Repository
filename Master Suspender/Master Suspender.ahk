;; https://autohotkey.com/board/topic/108571-example-of-how-to-suspendunsuspend-all-ahk-scripts-at-once/

;==============================================================================
; FILE: SuspendAllScripts.ahk
; DESC: By selecting "Suspend All" from this script's tray menu, all other AutoHotkey
;       scripts can be suspended and unsuspended.  Other script's suspend states are
;       not simply toggled, they are explicitly set to be suspended or not.
;       Refer to the function doSuspendAll() to see how this works.
;
; LIMITATIONS:
;       If another script has a custom tray menu with its own suspend command,
;       that menu item's checkmark will not be updated when using "Suspend All".
;       The following code can be added to those scripts so they refresh their
;       suspend checkmark whenever that tray icon is right-clicked.
;
;           OnMessage(0x404, "AHK_NotifyTrayIcon")
;           AHK_NotifyTrayIcon(wParam, lParam)
;           {
;               if (lparam = 517)
;               {
;                   if A_IsSuspended
;                       Menu Tray, Check, YourSuspendMenuItemName
;                   else
;                       Menu Tray, Uncheck, YourSuspendMenuItemName
;               }
;           }
;
;UPDATES:
;Apr 26, 2014 - Original version by Dan Updegraff. (UppyDan @ autohotkey.com)
;==============================================================================

;============================= SETTINGS =======================================
#NoEnv
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance Force
#Persistent
SetTitleMatchMode, 2
DetectHiddenWindows, On

TEXT_SUSPEND := "Suspend" ;; Change this text to support other languages.

;============================= CUSTOM MENU ====================================
Menu Tray, NoStandard
Menu Tray, Add, Open, TrayMenuHdlr_Open
Menu Tray, Add, Help, TrayMenuHdlr_Help
Menu Tray, Add, Window Spy, TrayMenuHdlr_WinSpy
Menu Tray, Add
Menu Tray, Add, Reload, TrayMenuHdlr_Reload
Menu Tray, Add, Edit, TrayMenuHdlr_Edit
Menu Tray, Add
Menu Tray, Add, Suspend, TrayMenuHdlr_Suspend
Menu Tray, Add, Suspend All, TrayMenuHdlr_SuspendAll
Menu Tray, Add, Exit, TrayMenuHdlr_Exit
Menu Tray, Default, Open
updateTrayIcon()

return ;; End of AutoExec section.

;============================ MENU HANDLERS =================================

;----------------------------------------------------------------------------
TrayMenuHdlr_Open:
  ListLines
return

;----------------------------------------------------------------------------
TrayMenuHdlr_Help:
  IfWinExist AutoHotkey Help
    WinActivate
  else
  {
    RegRead ahkInstallDir, HKEY_LOCAL_MACHINE, SOFTWARE\AutoHotkey, InstallDir
    Run %ahkInstallDir%\AutoHotKey.chm
  }
return

;----------------------------------------------------------------------------
TrayMenuHdlr_WinSpy:
  RegRead ahkInstallDir, HKEY_LOCAL_MACHINE, SOFTWARE\AutoHotkey, InstallDir
  Run %ahkInstallDir%\AU3_Spy.exe
  WinWait Active Window Info,,3
  if not ErrorLevel
    WinMove A,, A_ScreenWidth-400, 200 ;; Move the window to the side a little for convenience.
return

;----------------------------------------------------------------------------
TrayMenuHdlr_Reload:
  Reload
return

;----------------------------------------------------------------------------
TrayMenuHdlr_Edit:
  Edit ;; Edits this script file.
return

;----------------------------------------------------------------------------
TrayMenuHdlr_Suspend:
  Suspend Toggle
  if A_IsSuspended
    Menu Tray, Check, Suspend
  else
    Menu Tray, Uncheck, Suspend
  updateTrayIcon()
return

;----------------------------------------------------------------------------
TrayMenuHdlr_SuspendAll:
  doSuspendAll()
return

;----------------------------------------------------------------------------
TrayMenuHdlr_Pause:
  if A_IsPaused
  {
    Pause off
    Menu Tray, Uncheck, Pause Timers
  }
  else
  {
    Menu Tray, Check, Pause Timers
    Pause On
  }
return

;----------------------------------------------------------------------------
TrayMenuHdlr_Exit:
  ExitApp
return

;=============================== FUNCTIONS ====================================

;----------------------------------------------------------------------------
doSuspendAll()
{
  static allAreSuspended := false
  local winList, hWnd, hMenu, count, size, name, isChecked

  allAreSuspended := not allAreSuspended

  ;; Get a list of all running AHK scripts.
  DetectHiddenWindows, On
  WinGet winList, List, ahk_class AutoHotkey
  loop %winList%
  {
    hWnd := winList%A_Index%
    { ;; Get the default AHK menu handle.
      hMenu := DllCall("GetMenu", "Uint",hWnd, "Uint")
      SendMessage 0x116, hMenu, 0,, ahk_id %hWnd% ; WM_INITMENU
      hMenu := DllCall("GetSubMenu", "Uint",hMenu, "Int",A_LoopField)
      SendMessage 0x117, hMenu, 0,, ahk_id %hWnd% ; WM_INITPOPUPMENU
    }
    ;; Look for the menu item that has "Suspend" in its name.
    count := DllCall("GetMenuItemCount", "Int", hMenu)
    loop %count%
    {
      { ;; Get the name of this menu item.
        name := ""
        ;; Get size needed.
        size++ := DllCall("GetMenuString", "Uint",hMenu, "Uint",A_Index-1, "Uint", 0, "Int", 0, "Uint",0x400)
        size *= 2 ;; Make room for UNICODE strings.
        VarSetCapacity(name, size)
        ;; Get menu text.
        DllCall("GetMenuString",  "Uint",hMenu,  "Uint",A_Index-1, "Str",name,  "Int",size,  "Uint",0x400)
        name := RegExReplace(name, "&") ;; Remove ampersand (shortcut underline) from name.
      }
      ;; If it's the Suspend menu item, see if it has a checkmark.
      if InStr(name, TEXT_SUSPEND)
      {
        isChecked := DllCall("GetMenuState",  "Uint",hMenu,  "Uint",A_Index-1, "Uint",0x400,  "Uint") & 0x8
        ; Toggle this script's "suspend" menu item, if necessary.
        if ((allAreSuspended and not isChecked) or (not allAreSuspended and isChecked))
          PostMessage 0x111, 65404,,, ahk_id %hWnd% ; WM_COMMAND: 65404=suspend, 65403=pause.
        break ;; Done. Move on to the next script.
      }
    }
  }
;; Update the main script's menu checkmarks.
  Sleep 50
  updateTrayIcon()
  if allAreSuspended
  {
    Menu Tray, Check, Suspend All
    Menu Tray, Check, Suspend
  }
  else
  {
    Menu Tray, Uncheck, Suspend All
    Menu Tray, Uncheck, Suspend
  }
  VarSetCapacity(name, 0) ;; Free memory.
}

;----------------------------------------------------------------------------
updateTrayIcon()
{
  if A_IsSuspended
    Menu Tray, Icon, Shell32.dll, -253, 1 ;; Checkmark
  else
    Menu Tray, Icon, Shell32.dll, -322, 1 ;; Star
}

;--- End of File ---
