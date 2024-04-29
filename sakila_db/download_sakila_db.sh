#!/bin/bash
wget 'https://downloads.mysql.com/docs/sakila-db.zip'
unzip sakila-db.zip

cp sakila-db/sakila-schema.sql init/01_schema.sql
cp sakila-db/sakila-data.sql init/02_data.sql

rm -rf sakila-db sakila-db.zip
ls -al init
echo 'done!'
