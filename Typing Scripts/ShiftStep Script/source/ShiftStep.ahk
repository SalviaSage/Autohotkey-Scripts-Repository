SetBatchLines, -1
SendMode, Input
return


LShift::
   down_hk_running := 1
   Send, {LShift down}
   Input, key, V M L1 T2, {F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{PrintScreen}{Pause}{AppsKey}{LShift}
   ; tooltip, key=[%key%]`nerrorlevel=%ErrorLevel%
   Send, {LShift Up}
   down_hk_running := 0
   Hotkey, LShift Up, On
   Hotkey, LShift   , On
return


LShift Up::
   if (down_hk_running)
   {
      Hotkey, LShift   , Off
      Hotkey, LShift Up, Off
   }
   else
   {
      Send, {LShift Up}
   }
return
