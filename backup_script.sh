#!/usr/bin/env bash

# run psql backup on docker_showcase db

# on localhost and standard port with default user postgres and database docker_showcase
# format c for custom (schema and other stuff alone) file is output file
pg_dump -h localhost -p 5432 -d docker_showcase \
--format=c --file=backup.bak

# might need to use -U postgres or our user if User postgres does not exist