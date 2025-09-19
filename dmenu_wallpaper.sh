#!/bin/sh

# requirements: libnotify dunst dmenu xwallpaper

[[ (-d $HOME/pictures) && (-d $HOME/pictures/wallpapers) ]] || exit 1
[[ -d $HOME/.cache ]] || exit 1
	wallpaper="$(ls -A $HOME/pictures/wallpapers | dmenu -l 10 -p '<esc> to exit | 🌇 set wallpaper:')"
	xwallpaper --stretch $HOME/pictures/wallpapers/$wallpaper && cp $HOME/pictures/wallpapers/$wallpaper $HOME/.cache/wallpaper
