#!/bin/zsh

#this is a lot more complicated than it should be, since my polybar config and my xresources use different variables as references. 

#myfg=$(xrdb -query .xresources/polybar| sed -n 's/polybar.foreground\(:\)/\1/p'|cut -f2)
#mybg=$(xrdb -query .xresources/polybar| sed -n 's/polybar.background\(:\)/\1/p'|cut -f2)
#black
dblack=$(xrdb -query .xresources/polybar| sed -n 's/polybar.color\(0:\)/\1/p'|cut -f2)
lblack=$(xrdb -query .xresources/polybar| sed -n 's/polybar.color\(8:\)/\1/p'|cut -f2)
#red
dred=$(xrdb -query .xresources/polybar| sed -n 's/polybar.color\(1:\)/\1/p'|cut -f2)
lred=$(xrdb -query .xresources/polybar| sed -n 's/polybar.color\(9:\)/\1/p'|cut -f2)
#green
dgreen=$(xrdb -query .xresources/polybar| sed -n 's/polybar.color\(2:\)/\1/p'|cut -f2)
lgreen=$(xrdb -query .xresources/polybar| sed -n 's/polybar.color\(10:\)/\1/p'|cut -f2)
#yellow
dyellow=$(xrdb -query .xresources/polybar| sed -n 's/polybar.color\(3:\)/\1/p'|cut -f2)
lyellow=$(xrdb -query .xresources/polybar| sed -n 's/polybar.color\(11:\)/\1/p'|cut -f2)
#blue
dblue=$(xrdb -query .xresources/polybar| sed -n 's/polybar.color\(4:\)/\1/p'|cut -f2)
lblue=$(xrdb -query .xresources/polybar| sed -n 's/polybar.color\(12:\)/\1/p'|cut -f2)
#magenta
dmag=$(xrdb -query .xresources/polybar| sed -n 's/polybar.color\(5:\)/\1/p'|cut -f2)
lmag3=$(xrdb -query .xresources/polybar| sed -n 's/polybar.color\(13:\)/\1/p'|cut -f2)
#cyan
dcyan=$(xrdb -query .xresources/polybar| sed -n 's/polybar.color\(6:\)/\1/p'|cut -f2)
lcyan=$(xrdb -query .xresources/polybar| sed -n 's/polybar.color\(14:\)/\1/p'|cut -f2)
#white
dwhite=$(xrdb -query .xresources/polybar| sed -n 's/polybar.color\(7:\)/\1/p'|cut -f2)
lwhite=$(xrdb -query .xresources/polybar| sed -n 's/polybar.color\(15:\)/\1/p'|cut -f2)


####COLORS
bspc config focused_border_color $lblue
bspc config active_border_color $lred
bspc config normal_border_color $dblack
