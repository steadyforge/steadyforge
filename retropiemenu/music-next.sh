sudo killall -q mpg123 &
sleep 1
sudo mpg123 -Z /home/pi/RetroPie/music/*.mp3 >/dev/null 2>&1 &
