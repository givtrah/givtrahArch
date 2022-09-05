#!/usr/bin/env bash             

#This script must be run as root! (sudo)

# Machine / user specific settings to be run as root on a per machine basis

# READ THE LINES!

#This script must be run as the user!

echo "blacklist pcspkr" > /etc/modprobe.d/nobeep.conf



