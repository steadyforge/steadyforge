sudo killall -q mpg123 &
sleep 2
sudo mpg123 -Z /home/pi/RetroPie/music/*.mp3 >/dev/null 2>&1 &
sudo cp /home/pi/steadyforge/backup/musicon2.sh /home/pi/steadyforge/boot/musicon2.sh
whiptail --msgbox "Music enabled." 10 20 &lt;/dev/tty &gt;/dev/tty
sleep 2
