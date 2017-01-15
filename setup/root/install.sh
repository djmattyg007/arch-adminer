#!/bin/bash

# Exit script if return code != 0
set -e

source /root/functions.sh

echo "Installing dhcpcd package without udev support"
aur_start
aur_build dhcpcd-without-systemd
aur_finish

# Install additional PHP packages
source /root/php.sh

#source /root/adminer.sh

# Cleanup
pacman_cleanup
