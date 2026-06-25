# NIX
## Enable Nix (After Install)
print "󱄅 Enabling Nix Service..."
^sudo systemctl enable nix-daemon.service
^sudo systemctl start nix-daemon.service

sleep 5sec

## Add Nix Repos
print "    "
print "Adding Nix channels..."

^sudo nix-channel --add https://nixos.org/channels/nixpkgs-unstable
^sudo nix-channel --update

# SSH
## Enable SSHD
print "    "
print "Enabling 󰣀 "
^sudo ln -s /etc/sv/sshd /var/service/

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
^sudo ln -s /etc/sv/tailscaled/ /var/service/
^sudo systemctl start tailscaled

## Edge
print "  "
print "Edging now..."
^flatpak install flathub com.microsoft.Edge
print " "
print "Yubico Authenticator"
^flatpak install flathub com.yubico.yubioath
print " "
print "Postman"
^flatpak install flathub com.getpostman.Postman
print " "
print "Yubico"
^flatpak install flathub com.yubico.yubioath
