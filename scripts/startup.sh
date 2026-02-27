#!/bin/sh
foot --server &
iwd &
syncthing &
# waybar &
/usr/lib/soteria-polkit/soteria &
swaybg -i /home/hacky/Pictures/Wallpapers/pixel_road.png &
gnome-keyring-daemon --start --components=secrets

exec dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=wlroots
