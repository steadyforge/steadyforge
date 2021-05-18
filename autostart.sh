#!/bin/bash
VIDEO=/home/pi/steadyforge/boot/startupvid.sh
ROTATE=/home/pi/steadyforge/boot/rotateon.sh
MUSIC=/home/pi/steadyforge/boot/musicon.sh

if [ -f "$ROTATE" ]; then
VAR=270
else
VAR=0
fi

sudo chmod -R 777 /opt/retropie/
if [ -f "$ROTATE" ]; then
INTRO=/home/pi/RetroPie/splashscreens/steadyforge2.mp4
else
INTRO=/home/pi/RetroPie/splashscreens/steadyforge.mp4
fi

if [ -f "$VIDEO" ]; then
omxplayer --aspect-mode stretch --orientation $VAR --blank $INTRO
fi

if [ -f "$MUSIC" ]; then
sudo mpg123 -Z /home/pi/RetroPie/music/*.mp3 >/dev/null 2>&1 &
fi

if [ -f $ROTATE ];
then
sudo rm /opt/retropie/configs/all/retroarch.cfg
sudo cp /home/pi/steadyforge/rotate/retroarch2.cfg /opt/retropie/configs/all/retroarch.cfg
cp /home/pi/steadyforge/runcommand.sh /opt/retropie/supplementary/runcommand/
emulationstation --screenrotate 3 --screensize 470 655
else
sudo rm /opt/retropie/configs/all/retroarch.cfg
sudo cp /home/pi/steadyforge/rotate/retroarch.cfg /opt/retropie/configs/all/retroarch.cfg
cp /home/pi/steadyforge/rotate/runcommand.sh /opt/retropie/supplementary/runcommand/
emulationstation
fi
