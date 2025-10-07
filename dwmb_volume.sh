#!/bin/sh

if [[ "$(pamixer --get-mute)" == "true" ]]; then
	echo "🔇 muted"
else	
	echo "🔊 $(pamixer --get-volume-human)"
fi


