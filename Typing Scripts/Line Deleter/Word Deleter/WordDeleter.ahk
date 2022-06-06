;; FIXED IN WINDOWS 11.
;; This script is now the default behaviour as it should be in Win11.

/*
On Notepad, we can now delete whole words by doing Ctrl + Backspace.
I believe this was implemented in 2019 and before that, it just inserted the Backspace control character instead.
That was already working like that in some other programs and word processors and has also been made like that in Notepad.
However, in Windows explorer, such as when we rename files and folders, it still inserts the backspace control character
instead of deleting the whole word.
Perhaps this is some kind of an artifact and this is not something that is desirable, therefore this script
makes it so that when we press Ctrl + Backspace in the Windows environment, we delete the whole previous word instead of inserting the control character.
Just like in Notepad.
*/

;; Word Deleter

#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

Menu, Tray, Tip, % "Word Deleter:`n`nDelete an entire word by pressing Ctrl + Backspace."
Menu, Tray, Icon, imageres.dll, 90

^BS::Send {Shift Down}^{Left}{Shift Up}{Del}
