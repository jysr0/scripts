#!/bin/sh

if [[ $(uptime | awk '{print $3}') != *\:* ]]; then
	echo "🛸" $(uptime | awk '{print $3}')"min"
else
	echo "🛸 $(uptime | awk '{print $3}' | tr -d ',' | awk -F':' '{print $1"h •", $2"min"}')"
fi
