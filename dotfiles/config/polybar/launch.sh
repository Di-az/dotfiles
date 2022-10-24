#!/usr/bin/env bash

killall polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

CONFIG_DIR_TOP="/home/diaz/.config/polybar/config/config.ini"
CONFIG_DIR_BOT="/home/diaz/.config/polybar/config/bottom.ini"

#for m in $(polybar --list-monitors | cut -d":" -f1); do
#    MONITOR=$m polybar --reload main -c $CONFIG_DIR_TOP &
#done

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR_TOP=$m polybar --reload main -c $CONFIG_DIR_TOP &
    MONITOR_BOT=$m polybar --reload bottom -c $CONFIG_DIR_BOT &
  done
else
  #polybar --reload example &
  polybar main -c $CONFIG_DIR_TOP &
  polybar bottom -c $CONFIG_DIR_BOT &
fi

#polybar main -c $CONFIG_DIR_TOP &
#polybar bottom -c $CONFIG_DIR_BOT &

echo "Bar launched..."
