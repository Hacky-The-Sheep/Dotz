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

## NuShell
print "    "
print "Changing to nuShell"
print "chsh -s /usr/bin/nu"

## Git
git config --global user.email "jon.nguyen7@protonmail.com"
git config --global user.name "Jon"

## Tailscale
print "    "
print "Tailscale <--->"
^sudo systemctl enable tailscaled
^sudo systemctl start tailscaled

## Edge
print "  "
print "Edging now..."
^flatpak install flathub com.microsoft.Edge
