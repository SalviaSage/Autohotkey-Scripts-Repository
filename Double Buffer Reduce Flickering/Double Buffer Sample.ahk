#SingleInstance Force
#NoEnv
SetBatchLines -1
SetTimer, SubirMuertes, 15

Gui NoBuffer:Color, 0x00FF00
Gui NoBuffer:Add, Picture, x0 y0 w292 h255, simbolomuerte.png
Gui NoBuffer:Font, s150 Bold c0xFF0000, Zomblo
Gui NoBuffer:Add, Text, vNumeroMuertes x296 y0 w411 h258 +0x200 +Left, %Muertes%
Gui NoBuffer:Show, x0 y0 w630 h255, No Buffer

Gui DoubleBuffer:+LastFound +E0x02000000 +E0x00080000 ; Double Buffer Style WS_EX_COMPOSITED = True & WS_EX_LAYERED = true
Gui DoubleBuffer:Color, 0x00FF00
Gui DoubleBuffer:Add, Picture, x0 y0 w292 h255, simbolomuerte.png
Gui DoubleBuffer:Font, s150 Bold c0xFF0000, Zomblo
Gui DoubleBuffer:Add, Text, vNumeroMuertes x296 y0 w411 h258 +0x200 +Left, %Muertes%

Gui DoubleBuffer:Show, x0 y280 w630 h255, Double Buffer
Return

SubirMuertes:
	Muertes++
	GuiControl, NoBuffer:Text, NumeroMuertes, %Muertes%
	GuiControl, DoubleBuffer:Text, NumeroMuertes, %Muertes%
return

Esc::
GuiClose:
    ExitApp