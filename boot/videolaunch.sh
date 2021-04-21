sudo killall -q mpg123 &
sleep 5
sudo mpg123 -Z /home/pi/RetroPie/music/*.mp3 >/dev/null 2>&1 &
sudo cp /home/pi/steadyforge/backup/musicon.sh /home/pi/steadyforge/boot/musicon.sh
whiptail --msgbox "Bootup music: enabled." 10 20 &lt;/dev/tty &gt;/dev/tty
sleep 2
