#!/bin/sh

if [[ "$(pamixer --get-mute)" == "true" || "$(pamixer --get-volume-human)" == "0%" ]]; then
	echo "🔇 muted"
else	
	echo "🔊 $(pamixer --get-volume-human)"
fi


