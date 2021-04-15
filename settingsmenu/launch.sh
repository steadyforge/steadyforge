sudo echo works fucker $4 xxxxxxxxxx 1 $1 2 $2 3 $3 4 $4 5 $5 >> /home/pi/steadyforge/settingsmenu/test.txt

if [ $3 = '/home/pi/RetroPie/retropiemenu/attractmode.rp' ]; then
sudo /home/pi/RetroPie-Setup/retropie_packages.sh retropiemenu launch $3 &lt;/dev/tty &gt;/dev/tty
fi
if [ $3 = /home/pi/RetroPie/retropiemenu/audiosettings.rp ]; then
sudo echo yupppp 1 $1 2 $2 3 $3 4 $4 5 $5 >> /home/pi/steadyforge/settingsmenu/test.txt
sudo echo shit sudo sh /home/pi/RetroPie-Setup/retropie_packages.sh retropiemenu launch $3 >> /home/pi/steadyforge/settingsmenu/test.txt
fi
if [ $3 = '/home/pi/RetroPie/retropiemenu/bluetooth.rp' ]; then
sudo /home/pi/RetroPie-Setup/retropie_packages.sh retropiemenu launch $1 &lt;/dev/tty &gt;/dev/tty
fi
if [ $3 = '/home/pi/RetroPie/retropiemenu/configedit.rp' ]; then
sudo /home/pi/RetroPie-Setup/retropie_packages.sh retropiemenu launch $1 &lt;/dev/tty &gt;/dev/tty
fi
if [ $3 = '/home/pi/RetroPie/retropiemenu/esthemes.rp' ]; then
sudo /home/pi/RetroPie-Setup/retropie_packages.sh retropiemenu launch $1 &lt;/dev/tty &gt;/dev/tty
fi
if [ $3 = '/home/pi/RetroPie/retropiemenu/filemanager.rp' ]; then
sudo /home/pi/RetroPie-Setup/retropie_packages.sh retropiemenu launch $1 &lt;/dev/tty &gt;/dev/tty
fi
if [ $3 = '/home/pi/RetroPie/retropiemenu/raspiconfig.rp' ]; then
sudo /home/pi/RetroPie-Setup/retropie_packages.sh retropiemenu launch $1 &lt;/dev/tty &gt;/dev/tty
fi
if [ $3 = '/home/pi/RetroPie/retropiemenu/retroarch.rp' ]; then
sudo /home/pi/RetroPie-Setup/retropie_packages.sh retropiemenu launch $1 &lt;/dev/tty &gt;/dev/tty
fi
if [ $3 = '/home/pi/RetroPie/retropiemenu/retronetplay.rp' ]; then
sudo /home/pi/RetroPie-Setup/retropie_packages.sh retropiemenu launch $1 &lt;/dev/tty &gt;/dev/tty
fi
if [ $3 = '/home/pi/RetroPie/retropiemenu/rpsetup.rp' ]; then
sudo /home/pi/RetroPie-Setup/retropie_packages.sh retropiemenu launch $1 &lt;/dev/tty &gt;/dev/tty
fi
if [ $3 = '/home/pi/RetroPie/retropiemenu/runcommand.rp' ]; then
sudo /home/pi/RetroPie-Setup/retropie_packages.sh retropiemenu launch $1 &lt;/dev/tty &gt;/dev/tty
fi
if [ $3 = '/home/pi/RetroPie/retropiemenu/showip.rp' ]; then
sudo /home/pi/RetroPie-Setup/retropie_packages.sh retropiemenu launch $1 &lt;/dev/tty &gt;/dev/tty
fi
if [ $3 = '/home/pi/RetroPie/retropiemenu/splashscreen.rp' ]; then
sudo /home/pi/RetroPie-Setup/retropie_packages.sh retropiemenu launch $1 &lt;/dev/tty &gt;/dev/tty
fi
if [ $3 = '/home/pi/RetroPie/retropiemenu/wifi.rp' ]; then
sudo /home/pi/RetroPie-Setup/retropie_packages.sh retropiemenu launch $1 &lt;/dev/tty &gt;/dev/tty
fi
if [ $3 = '/home/pi/RetroPie/retropiemenu/hdmi-off.sh' ]; then
sudo sh $3 &
fi
if [ $3 = '/home/pi/RetroPie/retropiemenu/hdmi-on.sh' ]; then
sudo sh $3 &
fi
if [ $3 = '/home/pi/RetroPie/retropiemenu/start-bootupvideo.sh' ]; then
sudo sh $3 &
fi
if [ $3 = '/home/pi/RetroPie/retropiemenu/stop-bootupvideo.sh' ]; then
sudo sh $3 &
fi
if [ $3 = '/home/pi/RetroPie/retropiemenu/start-music.sh' ]; then
sudo sh /home/pi/RetroPie/retropiemenu/stop-music.sh &
sleep 2
sudo sh $3 &
fi
if [ $3 = '/home/pi/RetroPie/retropiemenu/stop-music.sh' ]; then
sudo sh $3 &
fi

sudo echo works fucker $1 xxxxxxxxxx >> /home/pi/steadyforge/settingsmenu/test.txt
#if [ $4 = '/home/pi/RetroPie/retropiemenu/attractmode.rp' ]; then
#sudo echo works fucker $4 /home/pi/RetroPie/retropiemenu/attractmode.rp 111111 >> /home/pi/steadyforge/settingsmenu/test.txt
#sudo echo works fucker $4 /home/pi/RetroPie/retropiemenu/attractmode.rp 222222 >> /home/pi/steadyforge/settingsmenu/test.txt
#else
#sudo echo works2 $4 /home/pi/RetroPie/retropiemenu/attractmode.rp 111111 >> /home/pi/steadyforge/settingsmenu/test.txt
#sudo echo works2 $4 /home/pi/RetroPie/retropiemenu/attractmode.rp 222222 >> /home/pi/steadyforge/settingsmenu/test.txt
#fi
