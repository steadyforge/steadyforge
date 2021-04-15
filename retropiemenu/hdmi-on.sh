sudo rm /opt/retropie/configs/all/retroarch.cfg
sudo cp /home/pi/steadyforge/rotate/retroarch.cfg /opt/retropie/configs/all/retroarch.cfg
#sudo rm /opt/retropie/supplementary/runcommand/runcommand.sh
#sudo cp /home/pi/steadyforge/rotate/runcommand.sh /opt/retropie/supplementary/runcommand/runcommand.sh
#sudo chmod 777 /opt/retropie/supplementary/runcommand/runcommand.sh
sudo rm /home/pi/steadyforge/boot/rotateon.sh
whiptail --msgbox "HDMI: enabled Rebooting..." 10 20 &lt;/dev/tty &gt;/dev/tty
sleep 4
sudo reboot
