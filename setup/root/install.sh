#!/bin/bash

# Exit script if return code != 0
set -e

source /root/functions.sh

echo "Install dhcpcd package without udev support"
aur_start
aur_build dhcpcd-without-systemd
aur_finish

echo "Install and configure additional PHP packages"
source /root/php.sh

echo "Download adminer"
curl -L -sS -o /srv/http/index.php https://www.matthewgamble.net/files/adminer/adminer-${ADMINER_VERSION}.php

# Cleanup
pacman_cleanup
