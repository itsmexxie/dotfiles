#!/bin/bash
choice=$(printf "Suspend\nHibernate\nReboot\nShutdown" | rofi -dmenu)
if [[ $choice == "Suspend" ]]; then
    systemctl suspend
elif [[ $choice == "Hibernate" ]]; then
    systemctl hibernate
elif [[ $choice == "Reboot" ]]; then
    systemctl reboot
elif [[ $choice == "Shutdown" ]]; then
    systemctl poweroff
fi
