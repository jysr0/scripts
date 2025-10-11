#!/bin/sh

if [[ "$(pamixer --get-mute)" == "true" ]]; then
	echo "🔇muted"
elif [[ "$(pamixer --get-volume)" -eq "0" ]]; then
	echo "🔈$(pamixer --get-volume-human)"
elif [[ "$(pamixer --get-volume)" -lt "30" ]]; then	
	echo "🔉$(pamixer --get-volume-human)"
else
	echo "🔊$(pamixer --get-volume-human)"
fi
