#SingleInstance, Force
#NoEnv
SetBatchLines, -1
SendMode Input
SetKeyDelay, -1, -1
SetWinDelay, -1
SetControlDelay, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
CoordMode,pixel
SetWorkingDir, C:\Users\Therese\Desktop\therese
toggle := false
#IfWinActive ahk_exe chrome.exe

v_title := "React App - Google Chrome"

Loop, {
	WinGetTitle, Title, A
	if (Title == v_title) {
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, target.png
        if (ErrorLevel = 2)
            SoundPlay, notification.mp3
        else if (ErrorLevel = 1)
            SoundPlay, notification.mp3
	}
	Sleep, 5000
}