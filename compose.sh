#!/usr/bin/env bash

echo "remember to run backup_script.sh first"

# run the container and copy commands
docker-compose up -d
docker exec -i backup_postgres pg_restore -d docker_showcase -U docker_user -h localhost /backup/backup.bak

# connect to database
psql -d docker_showcase -U docker_user -h localhost -p 5434