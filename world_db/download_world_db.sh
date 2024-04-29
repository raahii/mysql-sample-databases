#!/bin/bash
wget 'https://downloads.mysql.com/docs/world-db.tar.gz'
tar xvzf world-db.tar.gz

cp world-db/world.sql init/01_import_world_db.sql

rm -rf world-db world-db.tar.gz
ls -al init
echo 'done!'
