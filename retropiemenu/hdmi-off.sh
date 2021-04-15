sleep 3
sudo rm /opt/retropie/configs/all/retroarch.cfg
sudo cp /home/pi/steadyforge/rotate/retroarch2.cfg /opt/retropie/configs/all/retroarch.cfg
sudo chmod 777 /opt/retropie/configs/all/retroarch.cfg
sudo rm /opt/retropie/supplementary/runcommand/runcommand.sh
sudo cp /home/pi/steadyforge/rotate/runcommand2.sh /opt/retropie/supplementary/runcommand/runcommand.sh
sudo chmod 777 /opt/retropie/supplementary/runcommand/runcommand.sh
sudo pkill -f emulationstation
cp /home/pi/steadyforge/backup/rotateon.sh /home/pi/steadyforge/boot/rotateon.sh
sudo -u pi emulationstation --screenrotate 3 --screensize 470 655 #auto
whiptail --msgbox "HDMI: disabled." 10 20 &lt;/dev/tty &gt;/dev/tty
sleep 1
