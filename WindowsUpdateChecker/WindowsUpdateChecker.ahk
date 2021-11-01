;; This script is being considered a virus when compiled into a .exe by Microsoft Windows Defender. Dated: 2021-08-19
;; For this reason, I recommend running it directly from the source code .ahk file and not compiling it into a .exe

#SingleInstance force
ListLines, Off
#KeyHistory 0
Menu, Tray, Click, 1
#NoEnv
AutoTrim, Off
#UseHook
SetBatchLines, -1

hModule := DllCall("kernel32\LoadLibrary", Str,"wuapi.dll", Ptr)

oUpdateSession := ComObjCreate("Microsoft.Update.Session")
oUpdateSession.ClientApplicationID := "MSDN Sample Script"
oUpdateSearcher := oUpdateSession.CreateUpdateSearcher()

vTickCount1 := A_TickCount
oSearchResult := oUpdateSearcher.Search("IsInstalled=0 and Type='Software' and IsHidden=0")
;oSearchResult := oUpdateSearcher.Search("IsInstalled=0")
;oSearchResult := oUpdateSearcher.Search("")
vTickCount2 := A_TickCount

vUpdatesTotal := oSearchResult.Updates.Count

vOutput := ""
Loop, % vUpdatesTotal
{
	oUpdate := oSearchResult.Updates.Item(A_Index-1)
	try vSeverity := oUpdate.MsrcSeverity

	vIDs := ""
	Loop, % oUpdate.KBArticleIDs.Count
		vIDs .= oUpdate.KBArticleIDs(A_Index-1)

	vName := ""
	Loop, % oUpdate.Categories.Count
		vName .= oUpdate.Categories.Item(A_Index-1).Name ","
	vName := SubStr(vName, 1, -1)

	try vBrowseOnly := oUpdate.BrowseOnly
	try vType := oUpdate.Type
	try vIsInstalled := oUpdate.IsInstalled
	try vIsHidden := oUpdate.IsHidden
	vOutput .= (A_Index-1) "`t" vSeverity "`t" vName "`t" vBrowseOnly "`t" vType "`t" vIsInstalled "`t" vIsHidden "`t" oUpdate.Title "`r`n"

	;; other properties:
	;MsgBox, % oUpdate.Deadline
	;MsgBox, % oUpdate.Description
	;MsgBox, % oUpdate.EulaText
	;MsgBox, % oUpdate.MaxDownloadSize
	;MsgBox, % oUpdate.SupportURL
}

;vTickCount := (vTickCount2 - vTickCount1)
;vTickCountMin := (vTickCount2 - vTickCount1) / 60000
;vOutput .= "`r`nTOTAL: " vUpdatesTotal "`r`n"
; .= "`r`nTICK COUNT (MS): " vTickCount "`r`n"
;vOutput .= "`r`nTICK COUNT (MIN): " vTickCountMin "`r`n"

;vPath = %A_Desktop%\z updates %A_Now%.txt
FileAppend, % vOutput, % "*" vPath, UTF-8
MsgBox, % vUpdatesTotal " update(s) available." ;" [" vTickCountMin "]"
DllCall("kernel32\FreeLibrary", Ptr,hModule)
return
