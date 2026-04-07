## START THE SERVICES

print "Adding pipewire and pipewire-pulse"
sleep 3sec
sudo mkdir -p /etc/pipewire/pipewire.conf.d
sudo ln -s /usr/share/examples/wireplumber/10-wireplumber.conf /etc/pipewire/pipewire.conf.d/
sudo ln -s /usr/share/examples/pipewire/20-pipewire-pulse.conf /etc/pipewire/pipewire.conf.d/

print "\nEnabling Avahi"
sleep 3sec
sudo ln -s /etc/sv/avahi-daemon/ /var/service/

print "\nEnabling 󰂯 Bluetooth"
sleep 3sec
sudo ln -s /etc/sv/bluetoothd/ /var/service/

print "\nEnabling 󱄅 Nix Service"
sleep 3sec
print "\nEnabling runit nix service"
sudo ln -s /etc/sv/nix-daemon/ /var/service/
print "running: nix-channel --add https://nixos.org/channels/nixpkgs-unstable"
nix-channel --add https://nixos.org/channels/nixpkgs-unstable
nix-channel update


print "Enabling dbus"
sleep 3sec
sudo ln -s /etc/sv/dbus/ /var/service/

print "\nEnabling 󱏿 tailscale"
sleep 3sec
sudo ln -s /etc/sv/tailscaled/ /var/service/

print "\nEnabling SSH"
sleep 3sec
sudo ln -s /etc/sv/sshd/ /var/service/

print "\n Enabling udevd"
sleep 3sec
sudo ln -s /etc/sv/udevd/ /var/service/

print "\n################"
sleep 3sec
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
