#!/bin/sh
# $Xorg: xinitrc.cpp,v 1.3 2000/08/17 19:54:30 cpqbld Exp $

# start some nice programs
xset m 1 &
setxkbmap -option terminate:ctrl_alt_bksp
exec dbus-launch startfluxbox
