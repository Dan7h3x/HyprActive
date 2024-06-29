#!/bin/sh

if [[ $(wlr-randr | grep "HDMI-A-1") ]]; then
  wlr-randr --dryrun --output eDP-1 --off --output HDMI-A-1 --on --mode 1920x1080 --preferred
else
  wlr-randr --dryrun --output eDP-1 --on --preferred --mode 1920x1080 --scale 1.2
fi
