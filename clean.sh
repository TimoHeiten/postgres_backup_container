#!/usr/bin/env bash

docker container rm -f backup_postgres
docker container rm -f db_backup
docker image rm -f postgres_backup_container_db:latest # from compose
docker image rm -f postgres_db:backup #from script

rm backup.bak
dropdb docker_showcase