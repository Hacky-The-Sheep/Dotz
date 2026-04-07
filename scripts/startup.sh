#!/bin/sh

dbus-update-activation-environment --all

syncthing &
# waybar &
# swww-daemon &
pipewire &
gnome-keyring-daemon --start --components=secrets &
exec dbus-run-session niri --session
