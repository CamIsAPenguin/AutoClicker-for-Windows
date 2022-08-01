#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>

GUICreate("AutoClicker", 400, 400)

Local $GUIMSG
Do
    $GUIMSG = GUIGetMsg()
Until $GUIMSG = $GUI_EVENT_CLOSE