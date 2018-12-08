#!/usr/bin/env bash

echo "init db"
bash init_db.sh
echo "run backup"
bash backup_script.sh
sleep 1.5s

echo "prepare backup in container"
bash prepare_backup.sh

echo "connect to db in container"
psql -d docker_showcase -p 5433 -U docker_user -h localhost