#!/usr/bin/env sh

# requires bc

DIRECTION="$@"

position=$(playerctl --player=vlc position)

case $DIRECTION in
  plus )
    pos=$(echo "$position + 5" | bc )
    playerctl --player=vlc position $pos
    return
    ;;
  minus )
    pos=$(echo "$position - 5" | bc )
    if [ `echo $pos | sed -E "s/\..+$//g"` -lt 0 ]; then
      pos=0
    fi
    playerctl --player=vlc position $pos
    return
    ;;
esac

