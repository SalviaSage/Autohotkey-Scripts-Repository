#NoEnv
#SingleInstance, Force
#Persistent
#MaxThreadsPerHotkey 2

SetTitleMatchMode, 2
DetectHiddenWindows, On

F2::
MouseMove 300, 70
Click
sleep 1000
MouseMove 150, 70
sleep 9225 ;; 9225 for 10 seconds,  ;; 4250 for 5 secods.
Click
return
