#!/bin/sh

# requirements: dmenu systemd

op1="🍃 shutdown"
op2="💫 restart"
op3="💤 sleep"
op4="⚓ hibernate"
ansy="⭕ yes"
ansn="❌ no"

operation="$((echo $op1 ; echo $op2 ; echo $op3 ; echo $op4) | dmenu -p '<esc> to exit | system shutdown... :')"

if [[ $operation == "$op1" ]]; then
	confirmation="$((echo "$ansn" ; echo  "$ansy") | dmenu -p "confirm '$operation':")"
	[[ $confirmation == "$ansy" ]] && systemctl poweroff 
	
elif [[ $operation == "$op2" ]]; then
	confirmation="$((echo "$ansn" ; echo "$ansy") | dmenu -p "confirm '$operation':")"
	[[ $confirmation == "$ansy" ]] && systemctl reboot

elif [[ $operation == "op3" ]]; then
	systemctl suspend
elif [[ $operation == "$op4" ]]; then
	systemctl hibernate
fi
