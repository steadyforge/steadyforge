#!/bin/bash
git clone https://github.com/steadyforge/steadyforge.git /home/pi/temp
sudo cp -r /home/pi/temp/* /home/pi/steadyforge/
rm -rf /home/pi/temp
cd /home/pi/steadyforge
sudo sh install.sh
sleep 1
