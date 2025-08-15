#!/bin/sh

if [ "$(pamixer --get-mute)" == "true" ]; then
	echo "🔇" && notify-send -u low -t 2000 -a dunst "🔇 VOLUME MUTED"
else	
	echo "🔊 $(pamixer --get-volume)%"
fi


