#!/bin/bash
service mysql start && service apache2 start
echo > /var/log/apache2/access.log
echo > /var/log/apache2/error.log
echo > /var/log/mysql/error.log
echo > /var/log/php_errors.log
tail -f /var/www/html/nextcloud/data/nextcloud.log /var/log/mysql/error.log /var/log/php_errors.log /var/log/apache2/*.log
