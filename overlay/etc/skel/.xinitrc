#!/bin/sh
# $Xorg: xinitrc.cpp,v 1.3 2000/08/17 19:54:30 cpqbld Exp $


# start some nice programs
xset m 1 &
setxkbmap -option terminate:ctrl_alt_bksp
#exec ck-launch-session dbus-launch startfluxbox
#exec ck-launch-session gnome-session
#exec ck-launch-session mate-session
# The following variable defines the session which is started if the user doesn't explicitly select a session
# Source: http://svn.berlios.de/svnroot/repos/slim/trunk/xinitrc.sample


case $1 in
Fluxbox | * )
	exec dbus-launch startfluxbox
	;;
Mate)
	exec dbus-launch mate-session
	;;
icewm)
	icewmbg &
	icewmtray &
	exec icewm
	;;
wmaker)
	exec wmaker
	;;
blackbox)
	exec blackbox
	;;
esac
