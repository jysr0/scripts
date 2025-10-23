#!/bin/sh

brightness="$(($(cat /sys/class/backlight/intel_backlight/brightness) * 100 / $(cat /sys/class/backlight/intel_backlight/max_brightness)))"
case $brightness in
	[0-9]) echo "🔅 $(($(cat /sys/class/backlight/intel_backlight/brightness) * 100 / $(cat /sys/class/backlight/intel_backlight/max_brightness)))%";;
	[1-2][0-9]) echo "🔅 $(($(cat /sys/class/backlight/intel_backlight/brightness) * 100 / $(cat /sys/class/backlight/intel_backlight/max_brightness)))%";;
	*) echo "🔆 $(($(cat /sys/class/backlight/intel_backlight/brightness) * 100 / $(cat /sys/class/backlight/intel_backlight/max_brightness)))%";;
esac
