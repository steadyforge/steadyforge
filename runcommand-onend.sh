#!/bin/bash
MUSIC=/home/pi/steadyforge/boot/musicon2.sh
if [ -f "$MUSIC" ]; then
sudo pkill -CONT mpg123
fi
