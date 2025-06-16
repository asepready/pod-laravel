#!/bin/bash

# Stop and remove existing pod if it exists
podman pod stop laravel 2>/dev/null || true
if podman pod exists laravel; then
  podman pod rm -f laravel
fi
# Create pod
podman pod create --name laravel -p 8080:80

# Run MySQL container
podman run --name dtbase -t \
  -e MYSQL_ROOT_HOST="%" \
  -e MYSQL_ROOT_PASSWORD="lararoot" \
  -e MYSQL_DATABASE="laraveldb" \
  -e MYSQL_USER="laraveluser" \
  -e MYSQL_PASSWORD="laravelpass" \
  -v "./data/mysql:/var/lib/mysql:Z" \
  -v "./logs/mysql:/var/log/mysql:Z" \
  -v "./container/mysql/sql:/docker-entrypoint-initdb.d:Z" \
  -v "./container/mysql/my.cnf:/etc/mysql/conf.d/my.cnf:Z" \
  --restart=unless-stopped \
  --pod=laravel \
  -d docker.io/library/mysql:8.1

# Run phpMyAdmin container
podman run --name myadmin -t \
  -e PMA_HOST=dtbase \
  -e PMA_PORT=3306 \
  -e PMA_ARBITRARY=1 \
  -v "./data/pma:/sessions:Z" \
  --restart=unless-stopped \
  --pod=laravel \
  -d docker.io/phpmyadmin/phpmyadmin
