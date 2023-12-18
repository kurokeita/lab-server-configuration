#!/usr/bin/env bash

cd ../data/mariadb/ || exit

if ! [ -f "mariadb_backup.tar.gz" ]; then
    echo "There is no backup tar file to restore from."

    exit
fi

echo "Shutting down mariadb container..."
docker stop lab.mariadb

echo "Restoring mariadb backup..."
sudo cp mariadb_backup.tar.gz ../mariadb_backup.tar.gz
sudo rm -rf ./*
sudo cp ../mariadb_backup.tar.gz mariadb_backup.tar.gz
sudo tar xf mariadb_backup.tar.gz
sudo rm -rf ../mariadb_backup.tar.gz
echo "Done restoring mariadb backup."

echo "Starting mariadb container..."
docker start lab.mariadb
