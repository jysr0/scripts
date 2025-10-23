#!/bin/sh

if [[ "$(cat /sys/class/power_supply/BAT1/capacity)" -lt 40 ]] && [[ "$(cat /sys/class/power_supply/BAT1/status)" == "Discharging" ]]; then
	echo "🪫 $(cat /sys/class/power_supply/BAT1/capacity)%"
elif [[ "$(cat /sys/class/power_supply/BAT1/capacity)" -lt 40 ]] && [[ "$(cat /sys/class/power_supply/BAT1/status)" == "Charging" ]]; then
	echo "🔌🪫 $(cat /sys/class/power_supply/BAT1/capacity)%"
elif [[ "$(cat /sys/class/power_supply/BAT1/status)" == "Charging" ]]; then
	echo "🔌🔋 $(cat /sys/class/power_supply/BAT1/capacity)%"
else	
	echo "🔋 $(cat /sys/class/power_supply/BAT1/capacity)%"
fi
