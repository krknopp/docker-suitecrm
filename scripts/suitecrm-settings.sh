#!/bin/bash

/usr/local/bin/confd -onetime -backend env -confdir="/root/suitecrm-settings"

chown www-data:www-data /root/apache_docroot/config*.php
