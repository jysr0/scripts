#!/bin/sh

if [[ "$(cat /sys/class/net/wlp2s0/operstate)" == "up" ]] && [[ "$(cat /sys/class/net/enp1s0f1/operstate)" == "up" ]]; then
	echo '📶'

elif [[ "$(cat /sys/class/net/wlp2s0/operstate)" == "down" ]] && [[ "$(cat /sys/class/net/enp1s0f1/operstate)" == "up" ]]; then
	echo '📶'

elif [[ "$(cat /sys/class/net/wlp2s0/operstate)" == "dormant" ]] && [[ "$(cat /sys/class/net/enp1s0f1/operstate)" == "up" ]]; then
	echo '📶'

elif [[ "$(cat /sys/class/net/wlp2s0/operstate)" == "up" ]] && [[ "$(cat /sys/class/net/enp1s0f1/operstate)" == "down" ]]; then
	echo '🛜'

elif [[ "$(cat /sys/class/net/wlp2s0/operstate)" == "up" ]] && [[ "$(cat /sys/class/net/enp1s0f1/operstate)" == "dormant" ]]; then
	echo '🛜'

else 
	echo '📡' 
fi
