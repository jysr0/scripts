#!/bin/bash

if [ "$(cat /sys/devices/pci0000\:00/0000\:00\:1c.3/0000\:02\:00.0/net/wlp2s0/operstate)" == "up" ] && [ "$(cat /sys/devices/pci0000\:00/0000\:00\:1c.0/0000\:01\:00.1/net/enp1s0f1/operstate)" == "up" ]; then
	echo 'ETH'

elif [ "$(cat /sys/devices/pci0000\:00/0000\:00\:1c.3/0000\:02\:00.0/net/wlp2s0/operstate)" == "down" ] && [ "$(cat /sys/devices/pci0000\:00/0000\:00\:1c.0/0000\:01\:00.1/net/enp1s0f1/operstate)" == "up" ]; then
	echo 'ETH'

elif [ "$(cat /sys/devices/pci0000\:00/0000\:00\:1c.3/0000\:02\:00.0/net/wlp2s0/operstate)" == "dormant" ] && [ "$(cat /sys/devices/pci0000\:00/0000\:00\:1c.0/0000\:01\:00.1/net/enp1s0f1/operstate)" == "up" ]; then
	echo 'ETH'

elif [ "$(cat /sys/devices/pci0000\:00/0000\:00\:1c.3/0000\:02\:00.0/net/wlp2s0/operstate)" == "up" ] && [ "$(cat /sys/devices/pci0000\:00/0000\:00\:1c.0/0000\:01\:00.1/net/enp1s0f1/operstate)" == "down" ]; then
	echo 'WI-FI'

elif [ "$(cat /sys/devices/pci0000\:00/0000\:00\:1c.3/0000\:02\:00.0/net/wlp2s0/operstate)" == "up" ] && [ "$(cat /sys/devices/pci0000\:00/0000\:00\:1c.0/0000\:01\:00.1/net/enp1s0f1/operstate)" == "dormant" ]; then
	echo 'WI-FI'

else 
	echo 'SIG: X' 
fi
