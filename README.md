# docker-apache-php
This is an Apache image including SSL and PHP5 support

## Enabled extensions

* curl
* mcrypt
* mod_rewrite

## Disabled

* Autoindex (directory listing)
* Server signatures

## Available environment variables

| Name                | Default value                                               |
|---------------------|-------------------------------------------------------------|
| DATE_TIMEZONE       | Europe/Vienna                                               |
| UPLOAD_MAX_FILESIZE | 25M                                                         |
| POST_MAX_SIZE       | 25M                                                         |
| EXPOSE_PHP          | Off                                                         |
| FILE_UPLOADS        | Off                                                         |
| ALLOW_URL_FOPEN     | Off                                                         |
| ALLOW_URL_INCLUDE   | Off                                                         |
| DISABLE_FUNCTIONS   | exec,passthru,shell_exec,system,proc_open,popen,show_source |
