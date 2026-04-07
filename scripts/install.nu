#!/usr/bin/env nu

## Install the non-free repo before doing the rest
print "Installing non-free repo\n"
sudo xbps-install -Sy void-repo-nonfree

# List of packages to install
let packages = [
    avahi
    blueman
    brightnessctl
    btop
    carapace
    cryptsetup
    curl
    dbus
    delve
    elogind
    exfat-utils
    fastfetch
    fd
    ffmpeg
    flatpak
    font-iosevka
    freerdp
    ghostty
    git
    gnome-disk-utility
    go
    gobuster
    golangci-lint
    gopls
    gvfs
    gvfs-smb
    helix
    john
    kdenlive
    libreoffice
    lldb
    lvm2
    meson
    mpv
    nautilus
    net-tools
    niri
    nix
    nmap
    noto-fonts-emoji
    nss-mdns
    ntfs-3g
    nushell
    openssh
    openvpn
    pavucontrol
    pipewire
    putty
    pyright
    python
    remmina
    ripgrep
    ruff
    rust
    rust-analyzer
    screen
    stow
    syncthing
    tailscale
    thc-hydra
    unzip
    usbutils
    wayland
    wayland-protocols
    wget
    wireshark
    wireplumber
    wl-clipboard
    wtype
    xdg-desktop-portal-gnome
    xtools
    xwayland-satellite
    yaml-language-server
    yazi
    yt-dlp
    Signal-Desktop
    NetworkManager
]

# Update repository database
sudo xbps-install -S

# Install packages
$packages | each { |pkg|
    print $"Installing ($pkg)..."
    sudo xbps-install -y $pkg
}

print "Installation complete!"
print "Don't forget to run the services.nu file"
