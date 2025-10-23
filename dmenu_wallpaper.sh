#!/bin/sh

[[ (-d $XDG_PICTURES_DIR) && (-d $XDG_PICTURES_DIR/walls) ]] || exit 1
[[ -d $XDG_CACHE_HOME ]] || exit 1
	wall="$(ls -A $XDG_PICTURES_DIR/walls | dmenu -l 10 -p '🌇 set wallpaper:')"
	xwallpaper --stretch $XDG_PICTURES_DIR/walls/$wall && cp $XDG_PICTURES_DIR/walls/$wall $XDG_CACHE_HOME/wall
