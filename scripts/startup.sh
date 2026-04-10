#!/bin/sh

dbus-update-activation-environment --all &
syncthing &
pipewire &
gnome-keyring-daemon --start --components=secrets
