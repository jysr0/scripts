#!/bin/sh

file_existence="dmenu_emojis"
[[ -f "$XDG_DOCUMENTS_DIR/$file_existence" ]]
	emoji="$(cat $XDG_DOCUMENTS_DIR/$file_existence \
		| dmenu -i -l 10 -p '<esc> to exit | emojis to copy:')"
		
	echo "$emoji" | awk '{print $1}' |  tr -d '\n,\,' | xclip -selection clipboard
