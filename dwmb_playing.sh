#!/bin/sh

[[ $(pactl list sinks | grep -i state | awk '{print $2}') == "RUNNING" ]] && echo '•'
