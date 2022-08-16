#!/bin/bash

killall conky
sleep 2s

CONFIG_HOME="$HOME/.config/conky"
conky -c "$CONFIG_HOME/Syrma.conf"  &> /dev/null &
conky -c "$CONFIG_HOME/Syrma1.conf" &> /dev/null &
conky -c "$CONFIG_HOME/Syrma2.conf" &> /dev/null &
