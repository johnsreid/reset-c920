Loop, Read, camera_list.txt
{
	cam := A_LoopReadLine 
	Run ffmpeg.exe -f dshow -show_video_device_dialog true -i video="%cam%"
	WinWaitActive, 0001 Properties, , 3

	Send ^{Tab}
	Control, UnCheck,, Button7
	Send {Enter}
}