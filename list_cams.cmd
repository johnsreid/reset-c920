@echo off
ffmpeg.exe -list_devices true -f dshow -i dummy -hide_banner
pause
