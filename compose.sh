#!/usr/bin/env bash

# run the container and copy commands

docker compose up -d
docker compose exec -d pg_restore -d docker_showcase -U docker_user -h localhost /backup/backup.bak