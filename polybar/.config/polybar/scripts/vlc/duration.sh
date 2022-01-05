#!/usr/bin/env sh

dur=$(playerctl --player=vlc metadata --format " {{ duration(position) }} " 2>&1)

echo $dur | grep "No" 2>&1 >> /dev/null && echo "" || echo "$dur"
