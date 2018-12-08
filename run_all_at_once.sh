#!/usr/bin/env bash

bash init_db.sh
bash backup_script.sh
sleep 1.5s

bash prepare_backup.sh
