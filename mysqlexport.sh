#!/bin/bash

# Check to see if variables have data in them.
if [ ! $DB_HOST ] || [ ! $DB_USER ]; then
  echo "[$(date +"%Y-%m-%d %H:%M:%S:%3N %Z")] CRIT: MySQL variables not populated: failing."
  exit
fi

# Check to see if the drupal db has enough tables. if not, load starter.sql

if [ 'mysql -h $DB_HOST -e ";"' ]; then
  echo "[$(date +"%Y-%m-%d %H:%M:%S:%3N %Z")] NOTICE: MySQL connection successful"
else
  exit
fi

mysqldump --host $DB_HOST --ignore-table=$DB_NAME.watchdog $DB_NAME > /var/www/site/starter.sql
mysqldump --host $DB_HOST --no-data $DB_NAME watchdog >> /var/www/site/starter.sql
