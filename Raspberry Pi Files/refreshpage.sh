#!/bin/bash

export DISPLAY=:0
screen -S Macro -X quit
xdotool key ctrl+F5
sleep 40
xdotool click --repeat 6 5
(. ~/.profile; /usr/bin/screen -dmS Macro ~/macro.sh)