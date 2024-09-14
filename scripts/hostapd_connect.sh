#!/bin/bash

# run with sudo hostapd_cli -a /home/pi/loginlog/scripts/hostapd_connect.sh -iap0

echo "event\n"
touch /home/pi/hosttest.txt
event=$2
mac=$3
echo $event
echo $mac
if [ "${event}" == "AP-STA-CONNECTED" ]; then
	echo "connecting"
	while IFS=':' read -ra mac; do
		i="${mac[0]}"
		echo "$i"
                secs=$(( 16#$i % 200))
                echo "$secs"
                play /home/pi/LogginsDangerZone.ogg trim $secs 3
	done <<< "$mac"
fi
if [ "${event}" == "AP-STA-DISCONNECTED" ]; then
        echo "DISconnecting"
        while IFS=':' read -ra mac; do
                i="${mac[1]}"
                echo "$i"
                secs=$(( 16#$i % 220))
                echo "$secs"
                play /home/pi/LogginsFootloose.ogg trim $secs 3
        done <<< "$mac"
fi
