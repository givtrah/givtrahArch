#!/usr/bin/env bash             

#This script must be run as the user!

# Ensure auto update in dropbox does not break dropbox (e.g. this disables it)
install -dm0 ~/.dropbox-dist

# Install paru (aur helper)

git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..
rm -rf paru

# Install aur packages from aur.txt

paru -S --needed $(cat aur.txt)


