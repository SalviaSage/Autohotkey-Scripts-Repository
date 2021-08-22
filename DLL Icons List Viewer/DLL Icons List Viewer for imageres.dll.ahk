#SingleInstance, Force
SetBatchLines, -1

DllPath := "C:\WINDOWS\SYSTEM32\imageres.dll" ; Some more icons ~ C:\WINDOWS\SYSTEM32\shell32.dll

Gui, Margin, 0, 0
Gui, +AlwaysOnTop -MinimizeBox -DPIScale +hwndGuiHwnd
DllCall("uxtheme\SetWindowThemeAttribute", "ptr", GuiHwnd, "int", 1, "int64*", 6 | 6<<32, "uint", 8)
Gui, Add, Button, w300 h50 gIconSizeToggle +Center, Toggle Icon Size
Gui, Add, ListView, w300 h550 vListView +hwndListViewHwnd -0x4000 +LV0x10000 +0x8000, Icon & Number  ; Create the ListView
DllCall("UxTheme.dll\SetWindowTheme", "Ptr", ListViewHwnd, "WStr", "Explorer", "Ptr", 0) ; Set ListView theme
LV_ModifyCol(1,279)
GoSub, IconSizeToggle
Gui Show, h600 w300, Dll icons
return

IconSizeToggle:
IconSize := !IconSize
GuiControl, -Redraw, ListView
LV_Delete()
if (IconSize)
	ImageListID := IL_Create(1, 1, 1)
else
	ImageListID := IL_Create()
LV_SetImageList(ImageListID, 1)  ; Assign the above ImageList to the current ListView.

Loop { ; Populate the listview
	Check := IL_Add(ImageListID, DllPath, A_Index)
	if (Check != 0) {
		LV_Add("Icon" . A_Index, A_Index)
	}
	else
		Break
}

GuiControl, +Redraw, ListView
Return

GuiClose:
ExitApp
