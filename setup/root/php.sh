#!/bin/bash

# Exit script if return code != 0
set -e

pacman -S --noconfirm --noprogressbar --color=never php-pgsql php-sqlite

cat > /etc/php/conf.d/60-adminer-conf.ini <<EOF
extension=mysqli.so
extension=pdo_mysql.so
extension=pdo_pgsql.so
extension=pdo_sqlite.so
extension=sqlite3.so
EOF
