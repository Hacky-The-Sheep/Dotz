#!/usr/bin/env nu

# List of packages to install
let packages = [
    avahi
    blueman
    brightnessctl
    btop
    cryptsetup
    curl
    delve
    exfat-utils
    fd
    ffmpeg
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
    mpv
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
    wget
    wireshark
    wireplumber
    wl-clipboard
    wtype
    yaml-language-server
    yazi
    yt-dlp
    Signal-Desktop
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
