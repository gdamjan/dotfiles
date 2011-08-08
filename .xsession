#!/bin/sh
#
# File: $HOME/.xsession
#  - Executed by xdm/gdm/kdm at login

. $HOME/.xprofile

function awesome_support () (
    xrdb -load ~/.Xresources
    urxvtd -q -o -f
#    cairo-compmgr &
    sleep 10
    wicd-client &
    blueman-applet &
    setxkbmap -layout gb,mk \
       -option grp:switch  -option grp:caps_toggle
    gensig -q
    wmname LG3D
)

awesome_support &

exec /usr/bin/gpg-agent --enable-ssh-support --daemon /usr/bin/awesome
