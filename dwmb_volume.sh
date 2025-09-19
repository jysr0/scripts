#!/bin/sh

# requirements: pamixer , optional: libnotify

if [[ "$(pamixer --get-mute)" == "true" ]]; then
	echo "🔇" && notify-send "🔇 VOLUME MUTED"
else	
	echo "🔊 $(pamixer --get-volume)%"
fi


