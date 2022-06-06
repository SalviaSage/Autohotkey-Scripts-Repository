/*

I created this script before Windows 11 was released in 2021.
I believe then, there wasn't a way to delete whole lines and it seemed to me like this was a missing feature.
So I wrote this script to give the user a way to delete whole lines within texts.

However, now on Windows 11, we can delete the whole line from the left of the cursor blinker if we hit ctrl+shift+backspace.
Similarly, if we hit ctrl+shift+delete, it deletes the rest of the line from after the cursor blinker (also called the caret).

However, it seems we still do not have a way to delete the whole line.
So, since those two options are there. I went and I added the alt modifier key in there as well to be able to delete whole lines.
Here, it doesn't matter whether backspace or delete is pressed because we want to delete the whole line.

Press control+shift+alt+del or press control+shift+alt+backspace to delete the whole line.
Of course, you can also do, hit end, then hit ctrl+shift+backspace. But that is two keys, and we are trying to make it one key.

The script works by sending the home key which brings the caret to the start. Then it holds down shift and sends end which
brings the caret to the end of the line, then it sends delete. You can also do this by hitting ctrl+alt+shift+D.

*/

#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

Menu, Tray, Icon, imageres.dll, 90
Menu, Tray, Tip, % "Line Deleter:`nCtrl+Shift+Alt+Del keys delete the entire line."

+^!d::Send {Home}+{End}{Del}{Shift Up}
+^!Del::Send {Home}+{End}{Del}{Shift Up}
+^!Backspace::Send {Home}+{End}{Del}{Shift Up}

