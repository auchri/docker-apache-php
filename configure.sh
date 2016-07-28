#!/bin/bash

[[ ! $DATE_TIMEZONE ]] && DATE_TIMEZONE="Europe/Vienna"
[[ ! $UPLOAD_MAX_FILESIZE ]] && UPLOAD_MAX_FILESIZE="25M"
[[ ! $POST_MAX_SIZE ]] && POST_MAX_SIZE="25M"
[[ ! $EXPOSE_PHP ]] && EXPOSE_PHP="Off"
[[ ! $FILE_UPLOADS ]] && FILE_UPLOADS="Off"
[[ ! $ALLOW_URL_FOPEN ]] && ALLOW_URL_FOPEN="Off"
[[ ! $ALLOW_URL_INCLUDE ]] && ALLOW_URL_INCLUDE="Off"
[[ ! $DISABLE_FUNCTIONS ]] && DISABLE_FUNCTIONS="exec,passthru,shell_exec,system,proc_open,popen,show_source"

PHP_INI="/etc/php5/apache2/php.ini"

echo "date.timezone = ${DATE_TIMEZONE}" >> "${PHP_INI}"
echo "upload_max_filesize = ${UPLOAD_MAX_FILESIZE}" >> "${PHP_INI}"
echo "post_max_size = ${POST_MAX_SIZE}" >> "${PHP_INI}"
echo "expose_php = ${EXPOSE_PHP}" >> "${PHP_INI}"
echo "file_uploads = ${FILE_UPLOADS}" >> "${PHP_INI}"
echo "allow_url_fopen = ${ALLOW_URL_FOPEN}" >> "${PHP_INI}"
echo "allow_url_include = ${ALLOW_URL_INCLUDE}" >> "${PHP_INI}"
echo "disable_functions = ${DISABLE_FUNCTIONS}" >> "${PHP_INI}"

/usr/sbin/apache2ctl -D "FOREGROUND"
