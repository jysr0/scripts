#!/bin/bash

de="dmenu_emojis"
[ -f "$XDG_DOCUMENTS_DIR/$de" ]
	emoji="$(cat $XDG_DOCUMENTS_DIR/$de \
	| dmenu -i -l 20 -p Emojis: \
	| awk -F',' '{ print $1 }')"
		
	echo "$emoji" | tr -d '\n' | xclip -selection clipboard
