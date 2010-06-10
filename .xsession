#!/bin/sh
#
# File: $HOME/.xsession
#  - Executed by xdm/gdm/kdm at login

source $HOME/.xprofile

function awesome_support () (
    urxvtd -q -o -f
    cairo-compmgr &
    wicd-client &
    blueman-applet &
)

awesome_support &

exec ck-launch-session awesome
