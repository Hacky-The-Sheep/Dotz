#!/bin/sh
foot --server &
syncthing &
waybar &
/usr/lib/soteria-polkit/soteria &
swaybg -i /home/hacky/Pictures/Wallpapers/Train (catpu).png &
gnome-keyring-daemon --start --components=secrets

exec dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=wlroots
