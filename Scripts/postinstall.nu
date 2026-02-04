# NIX
## Enable Nix (After Install)
print "󱄅 Enabling Nix Service..."
^sudo systemctl enable nix-daemon.service
^sudo systemctl start nix-daemon.service

sleep 5sec

## Add Nix Repos
print "    "
print "Adding Nix channels..."

^nix-channel --add https://nixos.org/channels/nixpkgs-unstable
^nix-channel --update

# SSH
## Enable SSHD
print "    "
print "Enabling 󰣀 "
^sudo systemctl enable sshd

# YAY
## Enable Yay
print "  "
print "Installing yay AUR Helper..."
^sudo pacman -S --needed git base-devel and git clone https://aur.archlinux.org/yay.git and cd yay and makepkg -si
