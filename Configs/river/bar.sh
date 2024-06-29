#!/usr/bin/env sh

killall waybar

waybar --config ~/.config/river/waybar/config --style ~/.config/river/waybar/style.css &
