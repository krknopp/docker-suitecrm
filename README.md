# docker-drupal8

Custom build for SuiteCRM deployment

Consists of Debian, PHP7 and Apache 2.4.

# Environment variables
* PRODUCTION= "true" if the site is production (affects Git pulls and drupal settings)
* GIT_REPO= URL of Git repo to pull from
* GIT_BRANCH= Git branch
* APACHE_DOCROOT= Apache Docroot - defaults to `/var/www/site/docroot`
* DB_HOST = Host name of MySQL server
* DB_NAME = MySQL database name
* DB_USER = MySQL user name
* DB_PASSWORD = MySQL password

# BASH aliases
`mysqlc` connects to MySQL based on Environment Variables
`mysqld > file.sql` dumps database to file.sql based on Environment Variables

https://hub.docker.com/r/krknopp/suitecrm/
