#!/usr/bin/env bash

echo "run postgres container"
# run container and pull postgres
docker container run -d --rm -p 5433:5432 -e POSTGRES_DB=docker_showcase -e POSTGRES_USER=docker_user \
    --name db_backup postgres:10
# # wait for postgres to initialise docker container
sleep 2s
# mkdir
echo "mkdir and copy"
docker container exec -i db_backup mkdir -p /backup/
# cp to container
docker cp ./backup.bak db_backup:/backup/

# restore the database
echo "do the restore"
bash restore.sh