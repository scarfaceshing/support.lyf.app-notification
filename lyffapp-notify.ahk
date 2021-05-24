#SingleInstance, Force
#KeyHistory, 0
SetBatchLines, -1
ListLines, Off
SendMode Input ; Forces Send and SendRaw to use SendInput buffering for speed.
SetTitleMatchMode, 3 ; A window's title must exactly match WinTitle to be a match.
SetWorkingDir, %A_ScriptDir%
SplitPath, A_ScriptName, , , , thisscriptname
#MaxThreadsPerHotkey, 1 ; no re-entrant hotkey handling
; DetectHiddenWindows, On
SetWinDelay, -1 ; Remove short delay done automatically after every windowing command except IfWinActive and IfWinExist
SetKeyDelay, -1, -1 ; Remove short delay done automatically after every keystroke sent by Send or ControlSend
SetMouseDelay, -1 ; Remove short delay done automatically after Click and MouseMove/Click/Drag
SetWorkingDir, C:\Users\Student\Desktop\therese

#IfWinActive ahk_class Chrome_WidgetWin_1

detectingImage() {
	CoordMode Pixel
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, detect.png
	if (ErrorLevel = 2)
		; MsgBox Could not conduct the search.
		SoundPlay, door_bell.mp3
	else if (ErrorLevel = 1)
		; MsgBox Icon could not be found on the screen.
		SoundPlay, door_bell.mp3
	else
		; MsgBox The icon was found at %FoundX%x%FoundY%.
		return
}


Loop, {
	if WinActive("React App - Google Chrome") {
		detectingImage()
	}
	Sleep, 4000
}