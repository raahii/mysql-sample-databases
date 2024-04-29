#!/bin/bash
wget 'https://github.com/datacharmer/test_db/releases/download/v1.0.7/test_db-1.0.7.tar.gz' -O test_db.tar.gz
tar xvzf test_db.tar.gz

cp test_db/employees.sql init/01_employees.sql
#cp test_db/employees_partitioned.sql init/01_employees_partitioned.sql
gsed -i 's/\(\w\+\.dump\)/\/docker-entrypoint-initdb\.d\/\1/g' init/*.sql
cp test_db/*.dump init/

rm -rf test_db test_db.tar.gz
ls -al init
echo 'done!'
