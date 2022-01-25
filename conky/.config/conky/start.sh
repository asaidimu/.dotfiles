#!/bin/bash

killall conky
sleep 2s

conky -c $HOME/.config/conky/conky.conf &> /dev/null &
