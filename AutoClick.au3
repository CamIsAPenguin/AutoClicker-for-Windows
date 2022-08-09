#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <MsgBoxConstants.au3>
#include <Misc.au3>


#Region ### START Koda GUI section ### Form=
$UI = GUICreate("AutoClicker", 470, 164, 230, 182)
GUISetFont(16, 400, 0, "Arial")
GUISetBkColor(0x99B4D1)
$Label1 = GUICtrlCreateLabel("Delay(In Seconds):", 8, 8, 210, 31)
GUICtrlSetFont(-1, 18, 400, 0, "Arial")
$Label2 = GUICtrlCreateLabel("Let or Right Click?:", 8, 40, 182, 28)
$LeftOption = GUICtrlCreateRadio("Left", 193, 40, 57, 25)
$RightOption = GUICtrlCreateRadio("Right", 256, 40, 73, 25)
$Directions = GUICtrlCreateLabel("Press Ctrl Space to start and hold Shift Space to Stop", 8, 128, 415, 26)
GUICtrlSetFont(-1, 14, 400, 0, "Arial")
$DelayInput = GUICtrlCreateInput("", 218, 8, 49, 29)
GUICtrlSetFont(-1, 11, 400, 0, "Arial")

GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###


Local $bLeftChosen
Local $bRightChosen

While 1

	$nMsg = GUIGetMsg()

	Select
		Case $nMsg = $GUI_EVENT_CLOSE
			ExitLoop

		Case $nMsg = $LeftOption And BitAND(GUICtrlRead($LeftOption), $GUI_CHECKED) = $GUI_CHECKED
			$bLeftChosen = True
			$bRightChosen = False

		Case $nMsg = $RightOption And BitAND(GUICtrlRead($RightOption), $GUI_CHECKED) = $GUI_CHECKED
			$bLeftChosen = False
			$bRightChosen = True

	EndSelect

		;Start
		If _IsPressed("11") And _IsPressed("20") Then
			$Delay = GUICtrlRead($DelayInput)
			$Delay = $Delay * 1000

			If($bLeftChosen = True) Then
				While 1
					MouseClick($MOUSE_CLICK_LEFT)
					Sleep($Delay)

					;Stop
					If _IsPressed("10") And _IsPressed("20") Then
						MsgBox($MB_OK, "AutoClicker", "AutoClicker Stopped")
						ExitLoop
					EndIf

				WEnd
			EndIf

			If($bRightChosen = True) Then
				While 1
					MouseClick($MOUSE_CLICK_RIGHT)
					Sleep($Delay)

					;Stop
					If _IsPressed("10") And _IsPressed("20") Then
						MsgBox($MB_OK, "AutoClicker", "AutoClicker Stopped")
						ExitLoop
					EndIf
				WEnd

			EndIf

		EndIf

WEnd

