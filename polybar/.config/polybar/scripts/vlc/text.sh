#!/bin/bash

# see man zscroll for documentation of the following parameters
zscroll -l 30 \
        --delay 0.1 \
        --scroll-padding "  " \
        --match-command "/home/augustine/.config/polybar/scripts/vlc/status.sh --status" \
        --match-text "Playing" "--scroll 1" \
        --match-text "Paused" "--scroll 0" \
        --update-check true "/home/augustine/.config/polybar/scripts/vlc/status.sh" &

wait
