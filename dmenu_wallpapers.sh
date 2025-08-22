#!/bin/sh

[ -d $XDG_PICTURES_DIR/wallpapers ] && [ -f $HOME/.xinitrc ] || exit 1
	sel_wl=$(ls -A $XDG_PICTURES_DIR/wallpapers/ | dmenu -l 20)
	
	xwallpaper --stretch $XDG_PICTURES_DIR/wallpapers/$sel_wl && \
	sed -i "s/xwallpaper \-\-stretch.*/xwallpaper \-\-stretch \$XDG_PICTURES_DIR\/wallpapers\/$sel_wl/g" $HOME/.xinitrc
