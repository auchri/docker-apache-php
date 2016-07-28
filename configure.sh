#!/bin/bash

[[ ! $TIMEZONE ]] && TIMEZONE="Europe/Vienna"
PHP_INI="/etc/php5/apache2/php.ini"

sed -i "s_;date.timezone =_date.timezone = ${TIMEZONE}_g" "$PHP_INI"

/usr/sbin/apache2ctl -D "FOREGROUND"
