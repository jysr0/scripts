#!/bin/sh

if [ "$(pamixer --get-mute)" == "true" ]; then
	echo "VOL:  X" && notify-send -u low -t 2000 -a dunst "🔇 VOLUME MUTED"
else	
	echo "VOL: $(pamixer --get-volume)%"
fi


