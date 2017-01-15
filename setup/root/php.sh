#!/bin/bash

# Exit script if return code != 0
set -e

echo "Installing PHP packages..."
pacman -S --noconfirm --noprogressbar --color=never php-pgsql php-sqlite

# Configure PHP
cat > /etc/php/conf.d/60-adminer-conf.ini <<EOF
extension=mysqli.so
extension=pdo_mysql.so
extension=pdo_pgsql.so
extension=pdo_pgsql.so
extension=pdo_sqlite.so
extension=sqlite3.so
EOF
