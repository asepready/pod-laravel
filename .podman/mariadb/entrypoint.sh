#!/bin/sh
set -e

echo "net.ipv4.ip_unprivileged_port_start=0" >/etc/sysctl.conf

# Pastikan direktori data ada
mkdir -p /var/lib/mysql
chown -R mysql:mysql /var/lib/mysql

# Jika belum ada file di data, inisialisasi database
if [ ! -d "/var/lib/mysql/mysql" ]; then
    echo "=> Inisialisasi database baru..."
    mysql_install_db --user=mysql --ldata=/var/lib/mysql > /dev/null
fi

# Mulai MariaDB dalam mode daemon
echo "=> Memulai MariaDB..."
exec mysqld --user=mysql --bind-address=0.0.0.0