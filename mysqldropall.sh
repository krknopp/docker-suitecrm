#!/bin/bash

TABLES=$(mysql -h $DB_HOST $DB_NAME -e 'show tables' | awk '{ print $1}' | grep -v '^Tables' )

for t in $TABLES
do
	echo "Deleting $t table from $DB_NAME database..."
	mysql -h $DB_HOST $DB_NAME -e "drop table $t"
done
