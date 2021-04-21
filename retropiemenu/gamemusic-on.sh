sudo killall -q mpg123 &
sudo cp /home/pi/steadyforge/backup/launchmusic.sh /home/pi/steadyforge/boot/
sleep 2
sudo mpg123 -Z /home/pi/RetroPie/music/*.mp3 >/dev/null 2>&1 &
whiptail --msgbox "Game Music enabled." 10 20 &lt;/dev/tty &gt;/dev/tty
sleep 2
