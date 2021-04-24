#!/bin/bash
echo "This is an example creating menu using whiptail" 
sleep 2

echo "Choose the value for item from the options"

name=$(whiptail --menu "Options" 10 30 5 "800X600" "800X600" "1024x768" "1024x768" 3>&1 1>&2 2>&3) &lt;/dev/tty &gt;/dev/tty

echo "Hello $name"

whiptail --ok-button Done --msgbox "Resolution set to $name" 10 34

