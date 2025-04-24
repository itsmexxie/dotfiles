#!/bin/bash

if [ -d "/sys/class/power_supply/BAT0" ]; then
	if [[ $(echo "$(cat /sys/class/power_supply/BAT*/capacity | sed 's/$/+/' | tr -d '\n' | sed 's/.$//')" | bc) -le 10 ]]; then
		notify-send -u critical "Low battery!"
	fi
	if [[ $(echo "$(cat /sys/class/power_supply/BAT*/capacity | sed 's/$/+/' | tr -d '\n' | sed 's/.$//')" | bc) -le 5 ]]; then
                systemctl poweroff
        fi
fi
