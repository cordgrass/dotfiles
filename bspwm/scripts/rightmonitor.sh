#!/bin/bash

if [[ $1 == 0 ]]
then 
#killall compton;
xrandr --output VGA-1 --off;

elif [[ $1 == 1 ]];
then

killall compton
xrandr --output VGA-1 --mode 1920x1080 --right-of LVDS-1;
sleep 3 &&
#compton &
DISPLAY=:0.0 feh --bg-fill $HOME/Pictures/palms.jpg

fi;
