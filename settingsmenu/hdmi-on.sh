sudo rm /opt/retropie/configs/all/retroarch.cfg
sudo cp /home/pi/steadyforge/rotate/retroarch.cfg /opt/retropie/configs/all/retroarch.cfg
sudo rm /opt/retropie/supplementary/runcommand/runcommand.sh
sudo cp /home/pi/steadyforge/rotate/runcommand.sh /opt/retropie/supplementary/runcommand/runcommand.sh
sudo chmod 777 /opt/retropie/supplementary/runcommand/runcommand.sh
sudo pkill -f emulationstation
sudo rm /home/pi/steadyforge/boot/rotateon.sh
sudo -u pi emulationstation
