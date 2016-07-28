#!/bin/bash

[[ ! $TIMEZONE ]] && TIMEZONE="Europe/Vienna"

echo "${TIMEZONE}" >> "/etc/php5/apache2/php.ini"

/usr/sbin/apache2ctl -D "FOREGROUND"
