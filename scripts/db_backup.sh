#!/usr/bin/env bash

source ../.env

echo "Backing up mariadb..."
docker exec -it -e DB_ROOT_PASSWORD="${DB_ROOT_PASSWORD}" lab.mariadb bash -c 'mariabackup --backup --target-dir=/var/lib/mysql/backup -uroot --password=${DB_ROOT_PASSWORD}'

echo "Preparing mariadb backup..."
docker exec -it lab.mariadb bash -c 'mariabackup --prepare --target-dir=/var/lib/mysql/backup'

echo "Compressing mariadb backup..."
docker exec -it lab.mariadb bash -c 'cd /var/lib/mysql/backup && tar -zcvf ../mariadb_backup.tar.gz *'

echo "Cleaning up mariadb backup..."
docker exec -it lab.mariadb bash -c 'rm -rf /var/lib/mysql/backup'
