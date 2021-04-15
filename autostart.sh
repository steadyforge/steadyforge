#!/bin/bash
VIDEO=/home/pi/steadyforge/boot/startupvid.sh
ROTATE=/home/pi/steadyforge/boot/rotateon.sh
MUSIC=/home/pi/steadyforge/boot/musicon.sh

if [ -f "$ROTATE" ]; then
VAR=/home/pi/RetroPie/splashscreens/steadyforge2.mp4
else
VAR=/home/pi/RetroPie/splashscreens/steadyforge.mp4
fi

if [ -f "$VIDEO" ]; then
omxplayer -o alsa $VAR
fi

if [ -f "$ROTATE" ]; then
sudo rm /opt/retropie/configs/all/retroarch.cfg
sudo cp /home/pi/steadyforge/rotate/retroarch2.cfg /opt/retropie/configs/all/retroarch.cfg
sudo rm /opt/retropie/supplementary/runcommand/runcommand.sh
sudo cp /home/pi/steadyforge/rotate/runcommand2.sh /opt/retropie/supplementary/runcommand/runcommand.sh
sudo chmod -x /opt/retropie/supplementary/runcommand/runcommand.sh
sudo chmod 777 /opt/retropie/supplementary/runcommand/runcommand.sh
emulationstation --screenrotate 3 --screensize 780 1020 >/dev/null 2>&1 &
else
sudo rm /opt/retropie/configs/all/retroarch.cfg
sudo cp /home/pi/steadyforge/rotate/retroarch.cfg /opt/retropie/configs/all/retroarch.cfg
sudo rm /opt/retropie/supplementary/runcommand/runcommand.sh
sudo cp /home/pi/steadyforge/rotate/runcommand.sh /opt/retropie/supplementary/runcommand/runcommand.sh
sudo chmod -x /opt/retropie/supplementary/runcommand/runcommand.sh
sudo chmod 777 /opt/retropie/supplementary/runcommand/runcommand.sh
emulationstation >/dev/null 2>&1 &
fi
if [ -f "$MUSIC" ]; then
sleep 50; sudo mpg123 -Z /home/pi/RetroPie/music/*.mp3 >/dev/null 2>&1
fi
