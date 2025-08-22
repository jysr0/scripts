#!/bin/bash

if [ "$(acpi -b | awk --field-separator=, '{ print $2 }' | tr -d ' ,%')" -lt 33 ] && [ "$(acpi -b | awk '{ print $3 }' | tr -d ',')" == "Discharging" ]; then
	notify-send -u critical -t 10000 -a dunst '🪫 BATTERY LOW'
fi
	
echo "🔋 $(acpi -b | awk --field-separator=, '{ print $2 }' | tr -d ' ')"
