#!/bin/sh

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx
fi

xrandr --output DVI-I-1 --mode 1360x768
xrandr --output HDMI-1 --mode 1360x768
xset s off
xset s off -dpms
xset r rate 180 40
~/.fehbg &
picom --experimental-backends &
exec bspwm

