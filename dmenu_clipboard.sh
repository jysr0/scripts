#!/bin/sh

# simple & minimal clipboard handler, thanks to <https://github.com/BreadOnPenguins>
# requirements: 
# 	-required programms: dmenu xclip
# 	-optional but recommended: libnotify dunst
# usage: when your clipboard is not empty excecute this script to view your current and recently copied items
# note: either empty selections or selections contain "\n -new line character-" only won't be copied to clipboard

history_file="$HOME/.cache/clipboard.history"
clipboard_content=$(xclip -o -selection clipboard 2> /dev/null)

[ -f "$history_file" ] || notify-send -u low "'$history_file' created!" ; touch $history_file
[ -z "$clipboard_content" ] && exit 0
multi_line=$(echo "$clipboard_content" | sed ':a;N;$!ba;s/\n/'"<NEWLINE>"'/g')
grep -qFx "$multi_line" "$history_file" || echo "$multi_line" >> "$history_file"

dmenu_selection=$(tac "$history_file" | dmenu -l 8 -i -p '<esc> to quit | clipboard history:')
[ -n "$dmenu_selection" ] && echo "$dmenu_selection" | sed 's/'"<NEWLINE>"'/\n/g' | xclip -i -r -selection clipboard && notify-send -u low "selection copied"
