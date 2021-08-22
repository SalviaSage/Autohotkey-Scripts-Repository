;; Hotkeys Assigned: F10 key.
;; Hotkeys Assigned: F11 key key.

/*
© 2017 Commanding
Free to use/distribute/change, but please give credit to the original!
*/

Menu, Tray, Icon, Shell32.dll, 44 ;; icon
Menu, Tray, Tip, Crosshairs: Press F10 for the crosshairs menu | Press F11 to hide or show

#SingleInstance, force
Menu, Tray, NoStandard
Menu, Tray, Add, Exit, Exit
Menu, Tray, Default, Exit
if not A_IsAdmin

{
	Run *RunAs "%A_ScriptFullPath%"
	ExitApp
}

diam = 26
Max = 255
a1=BE
a2=00
a3=FF
crosshair1 = 10-0 10-4 9-5 8-5 7-5 6-7 5-8 5-10 0-9 0-15 5-14 5-16 6-17 7-18 8-19 9-19 10-20 9-25 15-25 14-19 15-19 16-19 17-18 18-17 19-16 19-15 20-14 25-15 25-9 20-10 19-9 19-8 18-7 17-5 16-5 14-5 15-0 10-0 12-9 10-4 9-5 8-5 7-5 6-7 5-8 5-10 9-12 5-14 5-16 6-17 7-18 8-19 9-19 10-20 12-15 14-19 15-19 16-19 17-18 18-17 19-16 19-15 20-14 16-12 20-10 19-9 19-8 18-7 17-5 16-5 14-5 12-9 12-11 13-12 12-13 12-12 12-11 12-9 10-0
crosshair2 = 10-10 7-2 12-2 12-13 13-12 12-11 12-2 18-2 14-10 23-5 23-18 14-14 18-23 7-23 10-14 2-18 2-5 10-10 6-2 5-2 3-3 2-5 2-5 2-18 2-19 3-21 5-23 6-23 18-23 19-23 21-22 23-19 23-18 23-5 23-5 22-3 20-2 19-2 6-2
crosshair3 = 11-16 11-22 9-20 8-19 7-18 6-17 5-16 5-15 4-14 4-10 5-9 5-8 6-7 7-6 8-5 9-4 10-4 11-3 14-3 15-4 16-4 17-5 18-6 19-7 20-8 20-9 21-10 21-14 20-15 20-16 19-17 18-18 17-19 16-20 14-22 14-16 15-17 16-17 17-16 17-15 18-14 18-10 17-9 17-8 16-7 15-7 14-6 11-6 10-7 9-7 8-8 8-9 7-10 7-14 8-15 8-16 9-17 10-17 11-16 11-16 11-12 12-13 12-10 13-11 12-12 12-13 11-12 12-13 11-14 13-14 13-12 14-13 13-14 11-14
crosshair4 = 7-8 12-0 17-8 20-12 24-21 15-21 9-21 0-21 4-12 6-13 3-19 9-19 9-21 15-21 15-19 21-19 18-13 20-12 17-8 15-9 12-4 9-9 7-8
crosshair5 = 12-0 15-0 16-1 17-1 18-2 19-2 20-3 21-4 22-5 22-6 23-7 23-8 24-9 24-15 23-16 23-17 22-18 22-19 21-20 20-21 19-22 18-22 17-23 16-23 15-24 9-24 8-23 7-23 6-22 5-22 4-21 3-20 2-19 2-18 1-17 1-16 0-15 0-9 1-8 1-7 2-6 2-5 3-4 4-3 5-2 6-2 7-1 8-1 9-0 12-0 13-1 13-9 12-9 12-2 9-2 8-3 7-3 6-4 5-4 4-5 4-6 3-7 3-8 2-9 2-12 9-12 9-13 2-13 2-15 3-16 3-17 4-18 4-19 5-20 6-20 7-21 8-21 9-22 12-22 12-15 13-15 13-22 15-22 16-21 17-21 18-20 19-20 20-19 20-18 21-17 21-16 22-15 22-13 15-13 15-12 22-12 22-9 21-8 21-7 20-6 20-5 19-4 18-4 17-3 16-3 15-2 12-2 12-0
crosshair6 = 12-0 15-0 16-1 17-1 18-2 19-2 20-3 21-4 22-5 22-6 23-7 23-8 24-9 24-15 23-16 23-17 22-18 22-19 21-20 20-21 19-22 18-22 17-23 16-23 15-24 9-24 8-23 7-23 6-22 5-22 4-21 3-20 2-19 2-18 1-17 1-16 0-15 0-9 1-8 1-7 2-6 2-5 3-4 4-3 5-2 6-2 7-1 8-1 9-0 12-0 12-2 9-2 8-3 7-3 6-4 4-3 3-4 4-6 3-7 3-8 2-9 2-15 3-16 3-17 4-18 2-19 4-22 6-20 7-21 8-21 9-22 15-22 16-21 17-21 18-20 20-21 21-19 20-18 21-17 21-16 22-15 22-9 21-8 21-7 20-6 21-4 20-3 18-4 17-3 16-3 15-2 12-2 12-0 12-13 13-12 12-11 12-0
crosshair7 = 12-0 15-0 16-1 17-1 18-2 19-2 20-3 21-4 22-5 22-6 23-7 23-8 24-9 24-15 23-16 23-17 22-18 22-19 21-20 20-21 19-22 18-22 17-23 16-23 15-24 9-24 8-23 7-23 6-22 5-22 4-21 3-20 2-19 2-18 1-17 1-16 0-15 0-9 1-8 1-7 2-6 2-5 3-4 4-3 5-2 6-2 7-1 8-1 9-0 12-0 12-2 9-2 8-3 8-6 7-7 7-10 8-10 9-9 9-7 8-6 8-3 7-3 6-4 5-4 4-5 4-6 3-7 3-8 2-9 2-15 3-16 3-17 4-18 4-19 5-20 6-20 7-21 8-21 9-22 12-22 12-16 9-16 8-17 7-17 5-19 4-18 4-17 5-16 6-15 7-14 8-14 9-13 15-13 16-14 17-14 18-15 19-16 20-17 20-18 19-19 18-19 17-17 16-17 15-16 12-16 12-22 15-22 16-21 17-21 18-20 19-20 20-19 20-18 21-17 21-16 22-15 22-9 21-8 21-7 20-6 20-5 19-4 18-4 17-3 16-3 16-7 16-10 17-10 18-9 18-7 17-6 16-7 16-3 15-2 12-2 12-0
crosshair8 = 12-0 15-0 16-1 17-1 18-2 19-2 20-3 21-4 22-5 22-6 23-7 23-8 24-9 24-15 23-16 23-17 22-18 22-19 21-20 20-21 19-22 18-22 17-23 16-23 15-24 9-24 8-23 7-23 6-22 5-22 4-21 3-20 2-19 2-18 1-17 1-16 0-15 0-9 1-8 1-7 2-6 2-5 3-4 4-3 5-2 6-2 7-1 8-1 9-0 12-0 12-2 9-2 8-3 7-3 6-4 5-4 4-5 4-6 3-7 3-8 2-9 2-15 3-16 3-17 4-18 4-19 5-20 6-20 7-21 8-21 8-20 8-16 4-16 4-17 7-20 8-20 8-21 9-22 15-22 16-21 16-20 16-16 18-16 20-16 20-17 16-20 16-21 17-21 18-20 19-20 20-19 20-18 21-17 21-16 22-15 22-9 21-8 21-7 20-6 20-5 19-4 18-4 17-3 16-3 15-3 9-3 12-6 15-3 15-2 12-2 12-0
crosshair9 = 12-0 25-0 25-25 0-25 0-0 9-0 7-2 2-2 2-7 0-9 0-15 2-17 2-23 7-23 9-25 16-25 18-23 23-23 23-17 25-15 25-9 23-7 23-2 17-2 15-0 12-0 12-3 12-11 11-11 11-12 3-12 3-13 11-13 11-14 12-14 12-22 13-22 13-14 14-14 14-13 22-13 22-12 14-12 14-11 13-11 13-3 12-3 12-0
crosshair10 = 11-11 14-11 14-14 11-14 11-11
activecrosshair := crosshair1
invisible = 0
menutoggle = 1
preview1active = 1
preview2active = 0
preview3active = 0
preview4active = 0
preview5active = 0
preview6active = 0
preview7active = 0
preview8active = 0
preview9active = 0
preview10active = 0
start:
Gui, crosshair:New, +LastFound +AlwaysOnTop +E0x08000000 -Caption
Gui, crosshair:+Owner
Gui margin,0,0
Gui crosshair:Add,Progress,x-2 y-2 w35 h35 c%a1%%a2%%a3% -border vCrosshair,100
SysGet, mon, Monitor
Gui crosshair:show, % "x" monRight//2-(diam//2) " y" monBottom//2-(diam//2) NA
WinSet, Region, %activecrosshair%, A
WinGetPos, Xpos, Ypos, A
menuXpos := Xpos+50
menuYpos := Ypos+50
Gui, +E0x80020
return

F11::
if invisible = 0
{
	invisible = 1
	Gui, crosshair:Hide
	Gui, colorslider:Destroy
}
Else
{
	invisible = 0
	Gui, crosshair:Show
}
return

F10::
if menutoggle = 0
{
	menutoggle = 1
	Gui, colorslider:Destroy
}
Else
{
	menutoggle = 0
	crosshair1Xpos := Xpos+100
	box1Xpos := crosshair1Xpos-5
	crosshair1Ypos := Ypos+60
	box1Ypos := crosshair1Ypos-5

	crosshair2Xpos := Xpos+140
	box2Xpos := crosshair2Xpos-5
	crosshair2Ypos := Ypos+60
	box2Ypos := crosshair2Ypos-5

	crosshair3Xpos := Xpos+180
	box3Xpos := crosshair3Xpos-5
	crosshair3Ypos := Ypos+60
	box3Ypos := crosshair3Ypos-5

	crosshair4Xpos := Xpos+220
	box4Xpos := crosshair4Xpos-5
	crosshair4Ypos := Ypos+60
	box4Ypos := crosshair4Ypos-5

	crosshair5Xpos := Xpos+260
	box5Xpos := crosshair5Xpos-5
	crosshair5Ypos := Ypos+60
	box5Ypos := crosshair5Ypos-5

	crosshair6Xpos := Xpos+100
	box6Xpos := crosshair6Xpos-5
	crosshair6Ypos := Ypos+100
	box6Ypos := crosshair6Ypos-5

	crosshair7Xpos := Xpos+140
	box7Xpos := crosshair7Xpos-5
	crosshair7Ypos := Ypos+100
	box7Ypos := crosshair7Ypos-5

	crosshair8Xpos := Xpos+180
	box8Xpos := crosshair8Xpos-5
	crosshair8Ypos := Ypos+100
	box8Ypos := crosshair8Ypos-5

	crosshair9Xpos := Xpos+220
	box9Xpos := crosshair9Xpos-5
	crosshair9Ypos := Ypos+100
	box9Ypos := crosshair9Ypos-5

	crosshair10Xpos := Xpos+260
	box10Xpos := crosshair10Xpos-5
	crosshair10Ypos := Ypos+100
	box10Ypos := crosshair10Ypos-5

	if preview1active = 1
	{
		selection1color = Silver
		preview1color = Fuchsia
	}
	else
	{
		selection1color = Gray
		preview1color = Blue
	}

	if preview2active = 1
	{
		selection2color = Silver
		preview2color = Fuchsia
	}
	else
	{
		selection2color = Gray
		preview2color = Blue
	}

	if preview3active = 1
	{
		selection3color = Silver
		preview3color = Fuchsia
	}
	else
	{
		selection3color = Gray
		preview3color = Blue
	}

	if preview4active = 1
	{
		selection4color = Silver
		preview4color = Fuchsia
	}
	else
	{
		selection4color = Gray
		preview4color = Blue
	}

	if preview5active = 1
	{
		selection5color = Silver
		preview5color = Fuchsia
	}
	else
	{
		selection5color = Gray
		preview5color = Blue
	}

	if preview6active = 1
	{
		selection6color = Silver
		preview6color = Fuchsia
	}
	else
	{
		selection6color = Gray
		preview6color = Blue
	}

	if preview7active = 1
	{
		selection7color = Silver
		preview7color = Fuchsia
	}
	else
	{
		selection7color = Gray
		preview7color = Blue
	}

	if preview8active = 1
	{
		selection8color = Silver
		preview8color = Fuchsia
	}
	else
	{
		selection8color = Gray
		preview8color = Blue
	}

	if preview9active = 1
	{
		selection9color = Silver
		preview9color = Fuchsia
	}
	else
	{
		selection9color = Gray
		preview9color = Blue
	}

	if preview10active = 1
	{
		selection10color = Silver
		preview10color = Fuchsia
	}
	else
	{
		selection10color = Gray
		preview10color = Blue
	}

	Gui, colorslider:New, +AlwaysOnTop +E0x08000000 -Caption +border
	Gui -dpiscale
	Gui margin,5,5
	Gui, colorslider:Show,x%menuXpos% y%menuYpos% w245 h85, Color Slider
	Gui, colorslider:Add, Slider, w35 h75 vaa gsave AltSubmit -border Page10 Range1-300 TickInterval50 Vertical, 1

	Gui, shadowbox1:New, +AlwaysOnTop +E0x08000000 -Caption
	Gui -dpiscale
	Gui margin,0,0
	Gui shadowbox1:Add,Listview, w35 h35 Background%selection1color% vSelection1 gSelection1 -Hdr -E0x200 -border AltSubmit
	Gui, shadowbox1:+Ownercolorslider
	Gui, shadowbox1:Show,x%box1Xpos%  y%box1Ypos% w35 h35, Preview 1

	Gui, shadowbox2:New, +AlwaysOnTop +E0x08000000 -Caption
	Gui -dpiscale
	Gui margin,0,0
	Gui shadowbox2:Add,Listview, w35 h35 Background%selection2color% vSelection2 gSelection2 -Hdr -E0x200 -border AltSubmit
	Gui, shadowbox2:+Ownercolorslider
	Gui, shadowbox2:Show,x%box2Xpos% y%box2Ypos% w35 h35, Preview 1

	Gui, shadowbox3:New, +AlwaysOnTop +E0x08000000 -Caption
	Gui -dpiscale
	Gui margin,0,0
	Gui shadowbox3:Add,Listview, w35 h35 Background%selection3color% vSelection3 gSelection3 -Hdr -E0x200 -border AltSubmit
	Gui, shadowbox3:+Ownercolorslider
	Gui, shadowbox3:Show,x%box3Xpos% y%box3Ypos% w35 h35, Preview 1

	Gui, shadowbox4:New, +AlwaysOnTop +E0x08000000 -Caption
	Gui -dpiscale
	Gui margin,0,0
	Gui shadowbox4:Add,Listview, w35 h35 Background%selection4color% vSelection4 gSelection4 -Hdr -E0x200 -border AltSubmit
	Gui, shadowbox4:+Ownercolorslider
	Gui, shadowbox4:Show,x%box4Xpos% y%box4Ypos% w35 h35, Preview 1

	Gui, shadowbox5:New, +AlwaysOnTop +E0x08000000 -Caption
	Gui -dpiscale
	Gui margin,0,0
	Gui shadowbox5:Add,Listview, w35 h35 Background%selection5color% vSelection5 gSelection5 -Hdr -E0x200 -border AltSubmit
	Gui, shadowbox5:+Ownercolorslider
	Gui, shadowbox5:Show,x%box5Xpos% y%box5Ypos% w35 h35, Preview 1

	Gui, shadowbox6:New, +AlwaysOnTop +E0x08000000 -Caption
	Gui -dpiscale
	Gui margin,0,0
	Gui shadowbox6:Add,Listview, w35 h35 Background%selection6color% vSelection6 gSelection6 -Hdr -E0x200 -border AltSubmit
	Gui, shadowbox6:+Ownercolorslider
	Gui, shadowbox6:Show,x%box6Xpos% y%box6Ypos% w35 h35, Preview 1

	Gui, shadowbox7:New, +AlwaysOnTop +E0x08000000 -Caption
	Gui -dpiscale
	Gui margin,0,0
	Gui shadowbox7:Add,Listview, w35 h35 Background%selection7color% vSelection7 gSelection7 -Hdr -E0x200 -border AltSubmit
	Gui, shadowbox7:+Ownercolorslider
	Gui, shadowbox7:Show,x%box7Xpos% y%box7Ypos% w35 h35, Preview 1

	Gui, shadowbox8:New, +AlwaysOnTop +E0x08000000 -Caption
	Gui -dpiscale
	Gui margin,0,0
	Gui shadowbox8:Add,Listview, w35 h35 Background%selection8color% vSelection8 gSelection8 -Hdr -E0x200 -border AltSubmit
	Gui, shadowbox8:+Ownercolorslider
	Gui, shadowbox8:Show,x%box8Xpos% y%box8Ypos% w35 h35, Preview 1

	Gui, shadowbox9:New, +AlwaysOnTop +E0x08000000 -Caption
	Gui -dpiscale
	Gui margin,0,0
	Gui shadowbox9:Add,Listview, w35 h35 Background%selection9color% vSelection9 gSelection9 -Hdr -E0x200 -border AltSubmit
	Gui, shadowbox9:+Ownercolorslider
	Gui, shadowbox9:Show,x%box9Xpos% y%box9Ypos% w35 h35, Preview 1

	Gui, shadowbox10:New, +AlwaysOnTop +E0x08000000 -Caption
	Gui -dpiscale
	Gui margin,0,0
	Gui shadowbox10:Add,Listview, w35 h35 Background%selection10color% vSelection10 gSelection10 -Hdr -E0x200 -border AltSubmit
	Gui, shadowbox10:+Ownercolorslider
	Gui, shadowbox10:Show,x%box10Xpos% y%box10Ypos% w35 h35, Preview 1

	Gui, crosshairpreview1:New, +AlwaysOnTop +E0x08000000 -Caption
	Gui crosshairpreview1:Add,Progress, x-3 y-3 w35 h35 c%preview1color% vPreview1 -border,100
	Gui, crosshairpreview1:+Ownercolorslider
	Gui, crosshairpreview1:Show,x%crosshair1Xpos% y%crosshair1Ypos% w35 h35, Preview 1
	WinSet, Region, %crosshair1%, A
	Gui, +E0x80020

	Gui, crosshairpreview2:New, +AlwaysOnTop +E0x08000000 -Caption
	Gui crosshairpreview2:Add,Progress,x-3 y-3 w35 h35 c%preview2color% vPreview2 -border,100
	Gui, crosshairpreview2:+Ownercolorslider
	Gui, crosshairpreview2:Show,x%crosshair2Xpos% y%crosshair2Ypos% w35 h35, Preview 1
	WinSet, Region, %crosshair2%, A
	Gui, +E0x80020

	Gui, crosshairpreview3:New, +AlwaysOnTop +E0x08000000 -Caption
	Gui crosshairpreview3:Add,Progress,x-3 y-3 w35 h35 c%preview3color% vPreview3 -border,100
	Gui, crosshairpreview3:+Ownercolorslider
	Gui, crosshairpreview3:Show,x%crosshair3Xpos% y%crosshair3Ypos% w35 h35, Preview 1
	WinSet, Region, %crosshair3%, A
	Gui, +E0x80020

	Gui, crosshairpreview4:New, +AlwaysOnTop +E0x08000000 -Caption
	Gui crosshairpreview4:Add,Progress,x-3 y-3 w35 h35 c%preview4color% vPreview4 -border,100
	Gui, crosshairpreview4:+Ownercolorslider
	Gui, crosshairpreview4:Show,x%crosshair4Xpos% y%crosshair4Ypos% w35 h35, Preview 1
	WinSet, Region, %crosshair4%, A
	Gui, +E0x80020

	Gui, crosshairpreview5:New, +AlwaysOnTop +E0x08000000 -Caption
	Gui crosshairpreview5:Add,Progress,x-3 y-3 w35 h35 c%preview5color% vPreview5 -border,100
	Gui, crosshairpreview5:+Ownercolorslider
	Gui, crosshairpreview5:Show,x%crosshair5Xpos% y%crosshair5Ypos% w35 h35, Preview 1
	WinSet, Region, %crosshair5%, A
	Gui, +E0x80020

	Gui, crosshairpreview6:New, +AlwaysOnTop +E0x08000000 -Caption
	Gui crosshairpreview6:Add,Progress,x-3 y-3 w35 h35 c%preview6color% vPreview6 -border,100
	Gui, crosshairpreview6:+Ownercolorslider
	Gui, crosshairpreview6:Show,x%crosshair6Xpos% y%crosshair6Ypos% w35 h35, Preview 1
	WinSet, Region, %crosshair6%, A
	Gui, +E0x80020

	Gui, crosshairpreview7:New, +AlwaysOnTop +E0x08000000 -Caption
	Gui crosshairpreview7:Add,Progress,x-3 y-3 w35 h35 c%preview7color% vPreview7 -border,100
	Gui, crosshairpreview7:+Ownercolorslider
	Gui, crosshairpreview7:Show,x%crosshair7Xpos% y%crosshair7Ypos% w35 h35, Preview 1
	WinSet, Region, %crosshair7%, A
	Gui, +E0x80020

	Gui, crosshairpreview8:New, +AlwaysOnTop +E0x08000000 -Caption
	Gui crosshairpreview8:Add,Progress,x-3 y-3 w35 h35 c%preview8color% vPreview8 -border,100
	Gui, crosshairpreview8:+Ownercolorslider
	Gui, crosshairpreview8:Show,x%crosshair8Xpos% y%crosshair8Ypos% w35 h35, Preview 1
	WinSet, Region, %crosshair8%, A
	Gui, +E0x80020

	Gui, crosshairpreview9:New, +AlwaysOnTop +E0x08000000 -Caption
	Gui crosshairpreview9:Add,Progress,x-3 y-3 w35 h35 c%preview9color% vPreview9 -border,100
	Gui, crosshairpreview9:+Ownercolorslider
	Gui, crosshairpreview9:Show,x%crosshair9Xpos% y%crosshair9Ypos% w35 h35, Preview 1
	WinSet, Region, %crosshair9%, A
	Gui, +E0x80020

	Gui, crosshairpreview10:New, +AlwaysOnTop +E0x08000000 -Caption
	Gui crosshairpreview10:Add,Progress,x-3 y-3 w35 h35 c%preview10color% vPreview10 -border,100
	Gui, crosshairpreview10:+Ownercolorslider
	Gui, crosshairpreview10:Show,x%crosshair10Xpos% y%crosshair10Ypos% w35 h35, Preview 1
	WinSet, Region, %crosshair10%, A
	Gui, +E0x80020
	Gosub save
}
return

Selection1:
if A_GuiEvent = Normal
{
	preview1active = 1
	preview2active = 0
	preview3active = 0
	preview4active = 0
	preview5active = 0
	preview6active = 0
	preview7active = 0
	preview8active = 0
	preview9active = 0
	preview10active = 0
	Gui, crosshairpreview1:New, +AlwaysOnTop +E0x08000000 -Caption
	Gui crosshairpreview1:Add,Progress,x-2 y-2 w35 h35 cFuchsia vPreview1 -border,100
	Gui, crosshairpreview1:+Ownercolorslider
	Gui, crosshairpreview1:Show,x%crosshair1Xpos% y%crosshair1Ypos% w35 h35, Preview 1
	WinSet, Region, %crosshair1%, A
	Gui, +E0x80020
	activecrosshair := crosshair1
	Gui, crosshair:Destroy
	loop, 1
	{
		GuiControl shadowbox1:+BackgroundSilver, Selection1
		GuiControl shadowbox2:+BackgroundGray, Selection2
		GuiControl shadowbox3:+BackgroundGray, Selection3
		GuiControl shadowbox4:+BackgroundGray, Selection4
		GuiControl shadowbox5:+BackgroundGray, Selection5
		GuiControl shadowbox6:+BackgroundGray, Selection6
		GuiControl shadowbox7:+BackgroundGray, Selection7
		GuiControl shadowbox8:+BackgroundGray, Selection8
		GuiControl shadowbox9:+BackgroundGray, Selection9
		GuiControl shadowbox10:+BackgroundGray, Selection10
		GuiControl crosshairpreview2:+cBlue, Preview2
		GuiControl crosshairpreview3:+cBlue, Preview3
		GuiControl crosshairpreview4:+cBlue, Preview4
		GuiControl crosshairpreview5:+cBlue, Preview5
		GuiControl crosshairpreview6:+cBlue, Preview6
		GuiControl crosshairpreview7:+cBlue, Preview7
		GuiControl crosshairpreview8:+cBlue, Preview8
		GuiControl crosshairpreview9:+cBlue, Preview9
		GuiControl crosshairpreview10:+cBlue, Preview10
	}
	gosub, Start
}
return

Selection2:
if A_GuiEvent = Normal
{
	preview1active = 0
	preview2active = 1
	preview3active = 0
	preview4active = 0
	preview5active = 0
	preview6active = 0
	preview7active = 0
	preview8active = 0
	preview9active = 0
	preview10active = 0
	Gui, crosshairpreview2:New, +AlwaysOnTop +E0x08000000 -Caption
	Gui crosshairpreview2:Add,Progress,x-2 y-2 w35 h35 cFuchsia vPreview2 -border,100
	Gui, crosshairpreview2:+Ownercolorslider
	Gui, crosshairpreview2:Show,x%crosshair2Xpos% y%crosshair2Ypos% w35 h35, Preview 1
	WinSet, Region, %crosshair2%, A
	Gui, +E0x80020
	activecrosshair := crosshair2
	Gui, crosshair:Destroy
	loop, 1
	{
		GuiControl shadowbox1:+BackgroundGray, Selection1
		GuiControl shadowbox2:+BackgroundSilver, Selection2
		GuiControl shadowbox3:+BackgroundGray, Selection3
		GuiControl shadowbox4:+BackgroundGray, Selection4
		GuiControl shadowbox5:+BackgroundGray, Selection5
		GuiControl shadowbox6:+BackgroundGray, Selection6
		GuiControl shadowbox7:+BackgroundGray, Selection7
		GuiControl shadowbox8:+BackgroundGray, Selection8
		GuiControl shadowbox9:+BackgroundGray, Selection9
		GuiControl shadowbox10:+BackgroundGray, Selection10
		GuiControl crosshairpreview1:+cBlue, Preview1
		GuiControl crosshairpreview3:+cBlue, Preview3
		GuiControl crosshairpreview4:+cBlue, Preview4
		GuiControl crosshairpreview5:+cBlue, Preview5
		GuiControl crosshairpreview6:+cBlue, Preview6
		GuiControl crosshairpreview7:+cBlue, Preview7
		GuiControl crosshairpreview8:+cBlue, Preview8
		GuiControl crosshairpreview9:+cBlue, Preview9
		GuiControl crosshairpreview10:+cBlue, Preview10
	}
	gosub, Start
}
return

Selection3:
if A_GuiEvent = Normal
{
	preview1active = 0
	preview2active = 0
	preview3active = 1
	preview4active = 0
	preview5active = 0
	preview6active = 0
	preview7active = 0
	preview8active = 0
	preview9active = 0
	preview10active = 0
	Gui, crosshairpreview3:New, +AlwaysOnTop +E0x08000000 -Caption
	Gui crosshairpreview3:Add,Progress,x-2 y-2 w35 h35 cFuchsia vPreview3 -border,100
	Gui, crosshairpreview3:+Ownercolorslider
	Gui, crosshairpreview3:Show,x%crosshair3Xpos% y%crosshair3Ypos% w35 h35, Preview 1
	WinSet, Region, %crosshair3%, A
	Gui, +E0x80020
	activecrosshair := crosshair3
	Gui, crosshair:Destroy
	loop, 1
	{
		GuiControl shadowbox1:+BackgroundGray, Selection1
		GuiControl shadowbox2:+BackgroundGray, Selection2
		GuiControl shadowbox3:+BackgroundSilver, Selection3
		GuiControl shadowbox4:+BackgroundGray, Selection4
		GuiControl shadowbox5:+BackgroundGray, Selection5
		GuiControl shadowbox6:+BackgroundGray, Selection6
		GuiControl shadowbox7:+BackgroundGray, Selection7
		GuiControl shadowbox8:+BackgroundGray, Selection8
		GuiControl shadowbox9:+BackgroundGray, Selection9
		GuiControl shadowbox10:+BackgroundGray, Selection10
		GuiControl crosshairpreview1:+cBlue, Preview1
		GuiControl crosshairpreview2:+cBlue, Preview2
		GuiControl crosshairpreview4:+cBlue, Preview4
		GuiControl crosshairpreview5:+cBlue, Preview5
		GuiControl crosshairpreview6:+cBlue, Preview6
		GuiControl crosshairpreview7:+cBlue, Preview7
		GuiControl crosshairpreview8:+cBlue, Preview8
		GuiControl crosshairpreview9:+cBlue, Preview9
		GuiControl crosshairpreview10:+cBlue, Preview10
	}
	gosub, Start
}
return

Selection4:
if A_GuiEvent = Normal
{
	preview1active = 0
	preview2active = 0
	preview3active = 0
	preview4active = 1
	preview5active = 0
	preview6active = 0
	preview7active = 0
	preview8active = 0
	preview9active = 0
	preview10active = 0
	Gui, crosshairpreview4:New, +AlwaysOnTop +E0x08000000 -Caption
	Gui crosshairpreview4:Add,Progress,x-2 y-2 w35 h35 cFuchsia vPreview4 -border,100
	Gui, crosshairpreview4:+Ownercolorslider
	Gui, crosshairpreview4:Show,x%crosshair4Xpos% y%crosshair4Ypos% w35 h35, Preview 1
	WinSet, Region, %crosshair4%, A
	Gui, +E0x80020
	activecrosshair := crosshair4
	Gui, crosshair:Destroy
	loop, 1
	{
		GuiControl shadowbox1:+BackgroundGray, Selection1
		GuiControl shadowbox2:+BackgroundGray, Selection2
		GuiControl shadowbox3:+BackgroundGray, Selection3
		GuiControl shadowbox4:+BackgroundSilver, Selection4
		GuiControl shadowbox5:+BackgroundGray, Selection5
		GuiControl shadowbox6:+BackgroundGray, Selection6
		GuiControl shadowbox7:+BackgroundGray, Selection7
		GuiControl shadowbox8:+BackgroundGray, Selection8
		GuiControl shadowbox9:+BackgroundGray, Selection9
		GuiControl shadowbox10:+BackgroundGray, Selection10
		GuiControl crosshairpreview1:+cBlue, Preview1
		GuiControl crosshairpreview2:+cBlue, Preview2
		GuiControl crosshairpreview3:+cBlue, Preview3
		GuiControl crosshairpreview5:+cBlue, Preview5
		GuiControl crosshairpreview6:+cBlue, Preview6
		GuiControl crosshairpreview7:+cBlue, Preview7
		GuiControl crosshairpreview8:+cBlue, Preview8
		GuiControl crosshairpreview9:+cBlue, Preview9
		GuiControl crosshairpreview10:+cBlue, Preview10
	}
	gosub, Start
}
return

Selection5:
if A_GuiEvent = Normal
{
	preview1active = 0
	preview2active = 0
	preview3active = 0
	preview4active = 0
	preview5active = 1
	preview6active = 0
	preview7active = 0
	preview8active = 0
	preview9active = 0
	preview10active = 0
	Gui, crosshairpreview5:New, +AlwaysOnTop +E0x08000000 -Caption
	Gui crosshairpreview5:Add,Progress,x-2 y-2 w35 h35 cFuchsia vPreview5 -border,100
	Gui, crosshairpreview5:+Ownercolorslider
	Gui, crosshairpreview5:Show,x%crosshair5Xpos% y%crosshair5Ypos% w35 h35, Preview 1
	WinSet, Region, %crosshair5%, A
	activecrosshair := crosshair5
	Gui, +E0x80020
	Gui, crosshair:Destroy
	loop, 1
	{
		GuiControl shadowbox1:+BackgroundGray, Selection1
		GuiControl shadowbox2:+BackgroundGray, Selection2
		GuiControl shadowbox3:+BackgroundGray, Selection3
		GuiControl shadowbox4:+BackgroundGray, Selection4
		GuiControl shadowbox5:+BackgroundSilver, Selection5
		GuiControl shadowbox6:+BackgroundGray, Selection6
		GuiControl shadowbox7:+BackgroundGray, Selection7
		GuiControl shadowbox8:+BackgroundGray, Selection8
		GuiControl shadowbox9:+BackgroundGray, Selection9
		GuiControl shadowbox10:+BackgroundGray, Selection10
		GuiControl crosshairpreview1:+cBlue, Preview1
		GuiControl crosshairpreview2:+cBlue, Preview2
		GuiControl crosshairpreview3:+cBlue, Preview3
		GuiControl crosshairpreview4:+cBlue, Preview4
		GuiControl crosshairpreview6:+cBlue, Preview6
		GuiControl crosshairpreview7:+cBlue, Preview7
		GuiControl crosshairpreview8:+cBlue, Preview8
		GuiControl crosshairpreview9:+cBlue, Preview9
		GuiControl crosshairpreview10:+cBlue, Preview10
	}
	gosub, Start
}
return

Selection6:
if A_GuiEvent = Normal
{
	preview1active = 0
	preview2active = 0
	preview3active = 0
	preview4active = 0
	preview5active = 0
	preview6active = 1
	preview7active = 0
	preview8active = 0
	preview9active = 0
	preview10active = 0
	Gui, crosshairpreview6:New, +AlwaysOnTop +E0x08000000 -Caption
	Gui crosshairpreview6:Add,Progress,x-2 y-2 w35 h35 cFuchsia vPreview6 -border,100
	Gui, crosshairpreview6:+Ownercolorslider
	Gui, crosshairpreview6:Show,x%crosshair6Xpos% y%crosshair6Ypos% w35 h35, Preview 1
	WinSet, Region, %crosshair6%, A
	Gui, +E0x80020
	activecrosshair := crosshair6
	Gui, crosshair:Destroy
	loop, 1
	{
		GuiControl shadowbox1:+BackgroundGray, Selection1
		GuiControl shadowbox2:+BackgroundGray, Selection2
		GuiControl shadowbox3:+BackgroundGray, Selection3
		GuiControl shadowbox4:+BackgroundGray, Selection4
		GuiControl shadowbox5:+BackgroundGray, Selection5
		GuiControl shadowbox6:+BackgroundSilver, Selection6
		GuiControl shadowbox7:+BackgroundGray, Selection7
		GuiControl shadowbox8:+BackgroundGray, Selection8
		GuiControl shadowbox9:+BackgroundGray, Selection9
		GuiControl shadowbox10:+BackgroundGray, Selection10
		GuiControl crosshairpreview1:+cBlue, Preview1
		GuiControl crosshairpreview2:+cBlue, Preview2
		GuiControl crosshairpreview3:+cBlue, Preview3
		GuiControl crosshairpreview4:+cBlue, Preview4
		GuiControl crosshairpreview5:+cBlue, Preview5
		GuiControl crosshairpreview7:+cBlue, Preview7
		GuiControl crosshairpreview8:+cBlue, Preview8
		GuiControl crosshairpreview9:+cBlue, Preview9
		GuiControl crosshairpreview10:+cBlue, Preview10
	}
	gosub, Start
}
return

Selection7:
if A_GuiEvent = Normal
{
	preview1active = 0
	preview2active = 0
	preview3active = 0
	preview4active = 0
	preview5active = 0
	preview6active = 0
	preview7active = 1
	preview8active = 0
	preview9active = 0
	preview10active = 0
	Gui, crosshairpreview7:New, +AlwaysOnTop +E0x08000000 -Caption
	Gui crosshairpreview7:Add,Progress,x-2 y-2 w35 h35 cFuchsia vPreview7 -border,100
	Gui, crosshairpreview7:+Ownercolorslider
	Gui, crosshairpreview7:Show,x%crosshair7Xpos% y%crosshair7Ypos% w35 h35, Preview 1
	WinSet, Region, %crosshair7%, A
	Gui, +E0x80020
	activecrosshair := crosshair7
	Gui, crosshair:Destroy
	loop, 1
	{
		GuiControl shadowbox1:+BackgroundGray, Selection1
		GuiControl shadowbox2:+BackgroundGray, Selection2
		GuiControl shadowbox3:+BackgroundGray, Selection3
		GuiControl shadowbox4:+BackgroundGray, Selection4
		GuiControl shadowbox5:+BackgroundGray, Selection5
		GuiControl shadowbox6:+BackgroundGray, Selection6
		GuiControl shadowbox7:+BackgroundSilver, Selection7
		GuiControl shadowbox8:+BackgroundGray, Selection8
		GuiControl shadowbox9:+BackgroundGray, Selection9
		GuiControl shadowbox10:+BackgroundGray, Selection10
		GuiControl crosshairpreview1:+cBlue, Preview1
		GuiControl crosshairpreview2:+cBlue, Preview2
		GuiControl crosshairpreview3:+cBlue, Preview3
		GuiControl crosshairpreview4:+cBlue, Preview4
		GuiControl crosshairpreview5:+cBlue, Preview5
		GuiControl crosshairpreview6:+cBlue, Preview6
		GuiControl crosshairpreview8:+cBlue, Preview8
		GuiControl crosshairpreview9:+cBlue, Preview9
		GuiControl crosshairpreview10:+cBlue, Preview10
	}
	gosub, Start
}
return

Selection8:
if A_GuiEvent = Normal
{
	preview1active = 0
	preview2active = 0
	preview3active = 0
	preview4active = 0
	preview5active = 0
	preview6active = 0
	preview7active = 0
	preview8active = 1
	preview9active = 0
	preview10active = 0
	Gui, crosshairpreview8:New, +AlwaysOnTop +E0x08000000 -Caption
	Gui crosshairpreview8:Add,Progress,x-2 y-2 w35 h35 cFuchsia vPreview8 -border,100
	Gui, crosshairpreview8:+Ownercolorslider
	Gui, crosshairpreview8:Show,x%crosshair8Xpos% y%crosshair8Ypos% w35 h35, Preview 1
	WinSet, Region, %crosshair8%, A
	Gui, +E0x80020
	activecrosshair := crosshair8
	loop, 1
	{
		GuiControl shadowbox1:+BackgroundGray, Selection1
		GuiControl shadowbox2:+BackgroundGray, Selection2
		GuiControl shadowbox3:+BackgroundGray, Selection3
		GuiControl shadowbox4:+BackgroundGray, Selection4
		GuiControl shadowbox5:+BackgroundGray, Selection5
		GuiControl shadowbox6:+BackgroundGray, Selection6
		GuiControl shadowbox7:+BackgroundGray, Selection7
		GuiControl shadowbox8:+BackgroundSilver, Selection8
		GuiControl shadowbox9:+BackgroundGray, Selection9
		GuiControl shadowbox10:+BackgroundGray, Selection10
		GuiControl crosshairpreview1:+cBlue, Preview1
		GuiControl crosshairpreview2:+cBlue, Preview2
		GuiControl crosshairpreview3:+cBlue, Preview3
		GuiControl crosshairpreview4:+cBlue, Preview4
		GuiControl crosshairpreview5:+cBlue, Preview5
		GuiControl crosshairpreview6:+cBlue, Preview6
		GuiControl crosshairpreview7:+cBlue, Preview7
		GuiControl crosshairpreview9:+cBlue, Preview9
		GuiControl crosshairpreview10:+cBlue, Preview10
	}
	Gui, crosshair:Destroy
	gosub, Start
}
return

Selection9:
if A_GuiEvent = Normal
{
	preview1active = 0
	preview2active = 0
	preview3active = 0
	preview4active = 0
	preview5active = 0
	preview6active = 0
	preview7active = 0
	preview8active = 0
	preview9active = 1
	preview10active = 0
	Gui, crosshairpreview9:New, +AlwaysOnTop +E0x08000000 -Caption
	Gui crosshairpreview9:Add,Progress,x-2 y-2 w35 h35 cFuchsia vPreview9 -border,100
	Gui, crosshairpreview9:+Ownercolorslider
	Gui, crosshairpreview9:Show,x%crosshair9Xpos% y%crosshair9Ypos% w35 h35, Preview 1
	WinSet, Region, %crosshair9%, A
	Gui, +E0x80020
	activecrosshair := crosshair9
	Gui, crosshair:Destroy
	loop, 1
	{
		GuiControl shadowbox10:+BackgroundSilver, Selection10
		GuiControl shadowbox1:+BackgroundGray, Selection1
		GuiControl shadowbox2:+BackgroundGray, Selection2
		GuiControl shadowbox3:+BackgroundGray, Selection3
		GuiControl shadowbox4:+BackgroundGray, Selection4
		GuiControl shadowbox5:+BackgroundGray, Selection5
		GuiControl shadowbox6:+BackgroundGray, Selection6
		GuiControl shadowbox7:+BackgroundGray, Selection7
		GuiControl shadowbox8:+BackgroundGray, Selection8
		GuiControl shadowbox9:+BackgroundSilver, Selection9
		GuiControl shadowbox10:+BackgroundGray, Selection10
		GuiControl crosshairpreview1:+cBlue, Preview1
		GuiControl crosshairpreview2:+cBlue, Preview2
		GuiControl crosshairpreview3:+cBlue, Preview3
		GuiControl crosshairpreview4:+cBlue, Preview4
		GuiControl crosshairpreview5:+cBlue, Preview5
		GuiControl crosshairpreview6:+cBlue, Preview6
		GuiControl crosshairpreview7:+cBlue, Preview7
		GuiControl crosshairpreview8:+cBlue, Preview8
		GuiControl crosshairpreview10:+cBlue, Preview10
	}
	gosub, Start
}
return

Selection10:
if A_GuiEvent = Normal
{
	preview1active = 0
	preview2active = 0
	preview3active = 0
	preview4active = 0
	preview5active = 0
	preview6active = 0
	preview7active = 0
	preview8active = 0
	preview9active = 0
	preview10active = 1
	Gui, crosshairpreview10:New, +AlwaysOnTop +E0x08000000 -Caption
	Gui crosshairpreview10:Add,Progress,x-2 y-2 w35 h35 cFuchsia vPreview10 -border,100
	Gui, crosshairpreview10:+Ownercolorslider
	Gui, crosshairpreview10:Show,x%crosshair10Xpos% y%crosshair10Ypos% w35 h35, Preview 1
	WinSet, Region, %crosshair10%, A
	Gui, +E0x80020
	activecrosshair := crosshair10
	Gui, crosshair:Destroy
	loop, 1
	{
		GuiControl shadowbox1:+BackgroundGray, Selection1
		GuiControl shadowbox2:+BackgroundGray, Selection2
		GuiControl shadowbox3:+BackgroundGray, Selection3
		GuiControl shadowbox4:+BackgroundGray, Selection4
		GuiControl shadowbox5:+BackgroundGray, Selection5
		GuiControl shadowbox6:+BackgroundGray, Selection6
		GuiControl shadowbox7:+BackgroundGray, Selection7
		GuiControl shadowbox8:+BackgroundGray, Selection8
		GuiControl shadowbox9:+BackgroundGray, Selection9
		GuiControl shadowbox10:+BackgroundSilver, Selection10
		GuiControl crosshairpreview1:+cBlue, Preview1
		GuiControl crosshairpreview2:+cBlue, Preview2
		GuiControl crosshairpreview3:+cBlue, Preview3
		GuiControl crosshairpreview4:+cBlue, Preview4
		GuiControl crosshairpreview5:+cBlue, Preview5
		GuiControl crosshairpreview6:+cBlue, Preview6
		GuiControl crosshairpreview7:+cBlue, Preview7
		GuiControl crosshairpreview8:+cBlue, Preview8
		GuiControl crosshairpreview9:+cBlue, Preview9
	}
	gosub, Start
}
return

save:
Gui, crosshair:Submit, Nohide
n := Round(max/50,0)
if aa between 1 and 50
{
	a1 := Color(max)
	ab := aa*n
	a2 := Color(ab)
	a3 := Color(0)
}
if aa between 51 and 100
{
	a2 := Color(max)
	ab := (max-aa)*n
	a1 := Color(ab)
	a3 := Color(0)
}
if aa between 101 and 150
{
	a2 := Color(max)
	ab := (aa-100)*n
	a3 := Color(ab)
	a1 := Color(0)
}
if aa between 151 and 200
{
	a3 := Color(max)
	ab := (max-(aa-150))*n
	a2 := Color(ab)
	a1 := Color(0)
}
if aa between 201 and 250
{
	a3 := Color(max)
	ab := (aa-200)*n
	a1 := Color(ab)
	a2 := Color(0)
}
if aa between 251 and 300
{
	a1 := Color(max)
	ab := (max-(aa-250))*n
	a3 := Color(ab)
	a2 := Color(0)
}
loop, 1
{
	GuiControl crosshair:+c%a1%%a2%%a3%, Crosshair
}
return

Color(N) {
	SetFormat, Integer, Hex
	N += 0
	SetFormat, Integer, D
	StringTrimLeft, N, N, 2
	If(StrLen(N) < 2)
		N = 0%N%
	Return N
}

Exit:
	ExitApp
Return
