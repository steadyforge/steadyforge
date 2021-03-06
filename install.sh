#!/bin/bash
cd /home/pi
echo "installing Steayforge 0.0.2.."
sleep 1
echo "creating root directories"
mkdir ~/RetroPie/music/
mkdir ~/RetroPie/videoloadingscreens/
echo "copying files.."
sudo chmod -R 777 /opt/retropie/
sudo cp steadyforge/autostart.sh /opt/retropie/configs/all/
sudo cp steadyforge/smb.conf /etc/samba/
sudo cp steadyforge/runcommand-onstart.sh /opt/retropie/configs/all/
sudo cp steadyforge/runcommand-onend.sh /opt/retropie/configs/all/
sudo cp steadyforge/bash.bashrc ~/.bashrc
sudo cp steadyforge/retropiemenu/*.* ~pi/RetroPie/retropiemenu/
echo "complete."
sleep 1
echo "installing software.."
sudo apt-get install mpg123
sudo apt-get install omxplayer
sudo apt-get install whiptail
echo "waiting..."
sleep 1
echo "restarting samba.."
sudo systemctl restart smbd.service
echo "samba service: restart complete."
sleep 1
whiptail --msgbox "Steadyforge 0.0.3 install complete. please restart." 10 20 &lt;/dev/tty &gt;/dev/tty
echo "install complete please restart for changes to take affect"
