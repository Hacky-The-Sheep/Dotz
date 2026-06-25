#!/bin/sh

dbus-update-activation-environment --all &
syncthing &
pipewire &
noctalia &
/usr/libexec/xfce-polkit &
gnome-keyring-daemon --start --components=secrets
