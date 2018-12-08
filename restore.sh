#!/usr/bin/env bash


docker container exec -i db_backup pg_restore -d docker_showcase -U docker_user -h localhost /backup/backup.bak
