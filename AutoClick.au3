#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>

#Region ### START Koda GUI section ### Form=
$UI = GUICreate("AutoClicker", 436, 163, 230, 182)
GUISetFont(16, 400, 0, "Arial")
GUISetBkColor(0x99B4D1)
$Label1 = GUICtrlCreateLabel("Clicks Per Second (CPS):", 8, 8, 280, 31)
GUICtrlSetFont(-1, 18, 400, 0, "Arial")
$CPSInput = GUICtrlCreateInput("", 288, 8, 33, 25)
GUICtrlSetFont(-1, 11, 400, 0, "Arial")
$Label2 = GUICtrlCreateLabel("Let or Right Click?:", 8, 40, 182, 28)
$LeftOption = GUICtrlCreateRadio("Left", 193, 40, 57, 25)
$RightOption = GUICtrlCreateRadio("Right", 256, 40, 73, 25)
$Directions = GUICtrlCreateLabel("Press Ctrl Space to start and Shift Space to Stop", 8, 128, 415, 26)
GUICtrlSetFont(-1, 14, 400, 0, "Arial")
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###


While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

	EndSwitch
WEnd
