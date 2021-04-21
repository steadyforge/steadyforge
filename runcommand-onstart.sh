#!/bin/bash
START=/home/pi/steadyforge/videoloadingscreens
ROTATE=/home/pi/steadyforge/boot/rotateon.sh
VIDEOLAUNCH=/home/pi/steadyforge/boot/videolaunch.sh
LAUNCHMUSIC=/home/pi/steadyforge/boot/launchmusic.sh
if [ -f "$LAUNCHMUSIC" ]; then
sudo pkill -CONT mpg123
else
sudo pkill -STOP mpg123
fi

if [ -f "$ROTATE" ]; then
VAR=270
else
VAR=0
fi

if [ -f "$VIDEOLAUNCH" ]; then
if [ $1 = saturn ];then
     omxplayer --orientation $VAR --blank $START/saturn.mp4
elif [ $1 = dreamcast  ];then
    omxplayer --orientation $var --blank $START/dreamcast.mp4
elif [ $1 = sega32x  ];then
    omxplayer --orientation $var --blank $START/segacd.mp4
elif [ $1 = snes ];then
    omxplayer --orientation $var --blank $START/snes.mp4
elif [ $1 = gb ];then
    omxplayer --orientation $var --blank $START/gb.mp4
elif [ $1 = gamegear ];then
    omxplayer --orientation $var --blank $START/gamegear.mp4
elif [ $1 = gbc ];then
    omxplayer --orientation $var --blank $START/gbc.mp4
elif [ $1 = gba ];then
    omxplayer --orientation $var --blank $START/gba.mp4
elif [ $1 = n64 ];then
    omxplayer --orientation $var --blank $START/n64.mp4
elif [ $1 = psx ];then
    omxplayer --orientation $var --blank $START/psx.mp4
elif [ $1 = segacd ];then
    omxplayer --orientation $var --blank $START/segacd.mp4
elif [ $1 = sg-1000 ];then
    omxplayer --orientation $var --blank $START/sg-1000.mp4

   else
     omxplayer --orientation $var --blank $START/default.mp4
   fi
fi
fi
