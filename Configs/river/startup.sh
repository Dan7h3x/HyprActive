#!/usr/bin/env bash

killall waybar
waybar &

killall polkit-gnome-authentication-agent-1
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

killall nm-applet
nm-applet --indicator &
swaync &
mpd &
# killall wlsunset
# wlsunset -T 4500 &
brightnessctl set 20%

# River will send the process group of the init executable SIGTERM on exit.
riverctl default-layout rivertile &
exec rivertile -main-ratio 0.5 -view-padding 2 -outer-padding 2 &
for pad in $(riverctl list-inputs | grep -i touchpad); do
  riverctl input $pad events enabled
  riverctl input $pad tap enabled
done

killall swaybg
swaybg -i ~/.config/Wallpaper/Boy.jpg -m fill
