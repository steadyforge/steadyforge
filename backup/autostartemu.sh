#!/bin/bash
FILE=/home/pi/backup/startupvid.sh
if [ -f "$FILE" ]; then
VAR=/home/pi/RetroPie/splashscreens/steadyforge2.mp4
VAR2=/home/pi/RetroPie/splashscreens/steadyforge.mp4
fi
if /opt/vc/bin/tvservice -l | grep 'Display Number 2'
then
omxplayer -o alsa $VAR
mpg123 -Z /home/pi/RetroPie/music/*.mp3 &
sudo -u pi rm /opt/retropie/supplementary/runcommand/runcommand.sh
sudo -u pi cp /home/pi/backup/runcommand2.sh /opt/retropie/supplementary/runcommand/runcommand.sh
xrandr --output HDMI-1 --mode 600x800 --fb 768x600 --output HDMI0 --mode 768x10$
emulationstation
else
omxplayer -o alsa $VAR2
mpg123 -Z /home/pi/RetroPie/music/*.mp3 &
sudo -u pi rm /opt/retropie/supplementary/runcommand/runcommand.sh
sudo -u pi cp /home/pi/backup/runcommand.sh /opt/retropie/supplementary/runcommand/$
emulationstation --screenrotate 3
fi
