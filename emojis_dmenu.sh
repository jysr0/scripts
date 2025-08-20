#!/bin/bash

if [ -f "$XDG_DOCUMENTS_DIR/emojis_dmenu" ]; then
	emoji="$(cat $XDG_DOCUMENTS_DIR/emojis_dmenu \
	| dmenu -i -l 20 -p Emojis: \
	| awk -F',' '{ print $1 }')"
	
	echo "$emoji" | tr -d '\n, ' | xclip -selection clipboard && \
	notify-send "$emoji copied to clipboard"       	
else
	echo "emojis file does not exist" && \	
	exit 1
fi
