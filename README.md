# reset-c920
This tool will reset C920 Logitech webcams so that auto-focus is disabled on Windows PCs.

## Requirements
[AutoHotKey](https://www.autohotkey.com/) - AutoHotKey is required to run the tool that configures the cameras.

## Installation
* Install AutoHoyKey if it isn't already installed. Make sure that .ahk files are associated with it.
* Download the code files and unzip to a folder on your PC.

## Setup
If you only have one c920 camera connected to your PC, there is nothing to do here. Otherwise
* Open `camera_list.txt` in a text editor such as Notepad.
* Run the `list_cams.cmd` program in the folder.
* Each video and audio capture device is listed in the output. You need to copy the content of *Alternative Name* field into it's own line in `camera_list.txt`. For example:

**list_cams output**

	[dshow @ 000002188915bbc0]  "HD Pro Webcam C920"
	[dshow @ 000002188915bbc0]     Alternative name "@device_pnp_\\?\usb#vid_046d&pid_082d&mi_00#7&7629421&0&0000#{65e8773d-8f56-11d0-a3b9-00a0c9223196}\global"
	[dshow @ 000002188915bbc0]  "Game Capture HD60 S (Video) (#01)"
	[dshow @ 000002188915bbc0]     Alternative name "@device_pnp_\\?\usb#vid_0fd9&pid_005e#041414e9be#{65e8773d-8f56-11d0-a3b9-00a0c9223196}\{6f814be9-9af6-43cf-9249-c0340100021f}"
	[dshow @ 000002188915bbc0]  "HD Pro Webcam C920"
	[dshow @ 000002188915bbc0]     Alternative name "@device_pnp_\\?\usb#vid_046d&pid_082d&mi_00#7&1bc145fe&0&0000#{65e8773d-8f56-11d0-a3b9-00a0c9223196}\global"
	
We can see two HD Pro Webcam C920 devices. `camera_list.txt` should look like this:

**camera_list.txt content example**

    @device_pnp_\\?\usb#vid_046d&pid_082d&mi_00#7&7629421&0&0000#{65e8773d-8f56-11d0-a3b9-00a0c9223196}\global
    @device_pnp_\\?\usb#vid_046d&pid_082d&mi_00#7&1bc145fe&0&0000#{65e8773d-8f56-11d0-a3b9-00a0c9223196}\global

* Close the list tool and save the camera_list.txt file.

## Running

To reset the cameras, run the `configure_cameras.ahk` file by double-clicking on it. The settings for the cameras will flash on the screen as they are reconfigured.

If you want the script to run every time you sign in to your PC:

1. Open the folder with the camera tool.
1. Open the Run dialog box (Windows Key + R), type `shell:startup` and click OK.
1. Using the right-mouse button, drag the `configure_cameras.ahk` into the startup folder. When you let go, select *Create shortcuts here*.
