#!/bin/bash

export DISPLAY=:0
sleep 1
xdotool mousemove 526 478
xdotool keydown  ctrl
xdotool click --repeat 6 4
xdotool keyup ctrl
sleep 5
xdotool click --repeat 6 5