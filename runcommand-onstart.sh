enablevideolaunch="true"
echo 1 $1 2 $2 3 $3 4 $4 5 $5 > /home/pi/test.txt
if [[ $enablevideolaunch == "true" ]]; then
   gname=`echo $3 |cut -f7 -d "/" |sed 's/.\{4\}$//'`
#   ifgame=`ls "/home/pi/RetroPie/videoloadingscreens/${gname}.mp4" |wc -l`
#   ifsystem=`ls /home/pi/RetroPie/videoloadingscreens/$1.mp4 |wc -l`
if [ $1 = saturn ];then
     omxplayer --orientation 270 --blank /home/pi/RetroPie/videoloadingscreens/saturn.mp4
elif [ $1 = dreamcast  ];then
    omxplayer --orientation 270 --blank /home/pi/RetroPie/videoloadingscreens/dreamcast.mp4
elif [ $1 = sega32x  ];then
    omxplayer --orientation 270 --blank /home/pi/RetroPie/videoloadingscreens/segacd.mp4
elif [ $1 = snes ];then
    omxplayer --orientation 270 --blank /home/pi/RetroPie/videoloadingscreens/snes.mp4
elif [ $1 = gb ];then
    omxplayer --orientation 270 --blank /home/pi/RetroPie/videoloadingscreens/gb.mp4
elif [ $1 = gamegear ];then
    omxplayer --orientation 270 --blank /home/pi/RetroPie/videoloadingscreens/gamegear.mp4
elif [ $1 = gbc ];then
    omxplayer --orientation 270 --blank /home/pi/RetroPie/videoloadingscreens/gbc.mp4
elif [ $1 = gba ];then
    omxplayer --orientation 270 --blank /home/pi/RetroPie/videoloadingscreens/gba.mp4
elif [ $1 = n64 ];then
    omxplayer --orientation 270 --blank /home/pi/RetroPie/videoloadingscreens/n64.mp4
elif [ $1 = psx ];then
    omxplayer --orientation 270 --blank /home/pi/RetroPie/videoloadingscreens/psx.mp4
elif [ $1 = segacd ];then
    omxplayer --orientation 270 --blank /home/pi/RetroPie/videoloadingscreens/segacd.mp4
elif [ $1 = sg-1000 ];then
    omxplayer --orientation 270 --blank /home/pi/RetroPie/videoloadingscreens/sg-1000.mp4

   else
     omxplayer --orientation 270 --blank /home/pi/RetroPie/videoloadingscreens/default.mp4
   fi
fi
sudo pkill -STOP mpg123
