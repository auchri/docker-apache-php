FROM eboraas/apache-php
MAINTAINER Christoph Auer <auer.chrisi@gmx.net>

RUN /usr/sbin/a2enmod rewrite
RUN apt-get update && apt-get -y install mcrypt php5-mcrypt php5-curl && apt-get clean && rm -r /var/lib/apt/lists/*

# Enable mcrypt
RUN php5enmod mcrypt

# Disable directory listing
RUN /usr/sbin/a2dismod autoindex
