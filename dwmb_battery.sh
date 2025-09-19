#!/bin/sh

# optional: libnotify

if [[ "$(cat /sys/class/power_supply/BAT1/capacity)" -lt 36 ]] && [[ "$(cat /sys/class/power_supply/BAT1/status)" == "Discharging" ]]; then
	notify-send '🪫 BATTERY LOW'
fi
	
echo "🔋 $(cat /sys/class/power_supply/BAT1/capacity)%"
