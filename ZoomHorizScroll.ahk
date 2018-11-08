WheelRight::								; up on my MX Master
if WinExist("ahk_exe Magnify.exe")			; if magnifier isn't open, sends command, may have undesirable effects
{
	Send, {LWinDown}{Escape}{LWinUp}		; closes magnifier, keeps last set zoom level as default
}
return

WheelLeft::									; down on my MX Master
if !WinExist("ahk_exe Magnify.exe")			; only magnifies if magnifier is off (prevents "over-zooming" unintentionally)
{
	Send, {LWinDown}{NumpadAdd}{LWinUp}		; zoom to last set zoom level
}
return