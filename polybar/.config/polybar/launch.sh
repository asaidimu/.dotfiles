#!/usr/bin/env bash

USER_ID=$(whoami)

#Terminate already running bar instances
killall -q -u "$USER_ID" polybar

# Wait until the processes have been shut down
while pgrep -u "$USER_ID" -x polybar > /dev/null; do
  sleep 1;
done

# Launch polybar
polybar -c ~/.config/polybar/config.ini top & disown
polybar -c ~/.config/polybar/config.ini bottom & disown
