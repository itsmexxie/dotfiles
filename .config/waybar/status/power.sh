#!/bin/bash
choice=$(printf "󰌾 Lock\n󰑓 Reboot\n Power off\n󰒲 Suspend\n󰒲 Hibernate" | rofi -dmenu -i)

case "$choice" in
  "󰌾 Lock")
    hyprlock ;;

  "󰑓 Reboot")
    systemctl reboot ;;

  " Power off")
    systemctl poweroff ;;

  "󰒲 Suspend")
    systemctl suspend ;;

  "󰒲 Hibernate")
    systemctl hibernate ;;
esac
