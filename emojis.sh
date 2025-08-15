#!/bin/bash

if [ -f "$XDG_DOCUMENTS_DIR/emojis.li" ]; then
	em="$(cat $XDG_DOCUMENTS_DIR/emojis.li \
	| dmenu -i -l 20 -p Emojis: \
	| awk '{ print $1 }')"
	
	echo "$em" | tr -d '\n, ' | xclip -selection clipboard && \
	notify-send "$em copied to clipboard"       	
else
	echo "emojis file does not exist" && \	
	exit 1
fi
