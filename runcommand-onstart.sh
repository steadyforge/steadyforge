#!/bin/bash
start=/home/pi/steadyforge/videoloadingscreens
enablevideolaunch="true"
ROTATE=/home/pi/steadyforge/boot/rotateon.sh
VIDEOLAUNCH=/home/pi/steadyforge/boot/videolaunch.sh
if [ -f "$ROTATE" ]; then
VAR=270
else
VAR=0
fi

if [ -f "$VIDEOLAUNCH" ]; then
if [ $1 = saturn ];then
     omxplayer --orientation $VAR --blank $start/saturn.mp4
elif [ $1 = dreamcast  ];then
    omxplayer --orientation $var --blank $start/dreamcast.mp4
elif [ $1 = sega32x  ];then
    omxplayer --orientation $var --blank $start/segacd.mp4
elif [ $1 = snes ];then
    omxplayer --orientation $var --blank $start/snes.mp4
elif [ $1 = gb ];then
    omxplayer --orientation $var --blank $start/gb.mp4
elif [ $1 = gamegear ];then
    omxplayer --orientation $var --blank $start/gamegear.mp4
elif [ $1 = gbc ];then
    omxplayer --orientation $var --blank $start/gbc.mp4
elif [ $1 = gba ];then
    omxplayer --orientation $var --blank $start/gba.mp4
elif [ $1 = n64 ];then
    omxplayer --orientation $var --blank $start/n64.mp4
elif [ $1 = psx ];then
    omxplayer --orientation $var --blank $start/psx.mp4
elif [ $1 = segacd ];then
    omxplayer --orientation $var --blank $start/segacd.mp4
elif [ $1 = sg-1000 ];then
    omxplayer --orientation $var --blank $start/sg-1000.mp4

   else
     omxplayer --orientation $var --blank $start/default.mp4
   fi
fi
fi
sudo pkill -STOP mpg123
