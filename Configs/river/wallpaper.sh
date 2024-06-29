#!/usr/bin/env bash

killall swaybg

swaybg -i $(find ~/.config/Wallpaper -type f | shuf -n1) -m fill &
