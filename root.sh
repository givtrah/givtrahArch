#!/usr/bin/env bash             

# This script must be run as root! (using sudo)

# CHECK IF THIS IS FINE FOR ARCH?!?!?

# Use official installer to your liking first (btrfs filesystem!)
# Be sure to choose pipewire as the sound system
# and install xorg+drivers or KDE
#
# Does official installer install wifi firmware? microcode?
#
#
# iwctl
# device list
# station wlan0 connect gw1.dk



# Network setup
pacman -S --noconfirm --needed networkmanager dhclient

# Enable parallel downloading
sed -i 's/^#ParallelDownloads/ParallelDownloads/' /etc/pacman.conf

# Enable multilib
sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf
pacman -Sy --noconfirm --needed
pacman -Syu


# Install base packages
# This covers:

pacman -S --needed - < arch-base.txt

# Install extra packages
# This covers:

pacman -S --needed - < arch-extra.txt

# not needed if choosing KDE above
# systemctl enable lightdm.service

# dropbox needs python-gpgme package via pacman

pacman -S python-gpgme --needed



