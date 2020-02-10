#!/bin/sh
db_user="root"
db_passwd="root"
db_name="stock"
name="$(date +"%Y%m%d%H%M%S")"
mysqldump -u$db_user -p$db_passwd $db_name >>/cloud/mysql/$name.sql
