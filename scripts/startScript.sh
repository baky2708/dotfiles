#!/bin/sh
setxkbmap br
xmodmap ~/.swapkeys -display :0
setxkbmap us
xmodmap ~/.swapkeys -display :0
##reset xmodmap keys
#setxkbmap -option
