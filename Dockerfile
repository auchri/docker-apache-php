FROM eboraas/apache-php
MAINTAINER Christoph Auer <auer.chrisi@gmx.net>

RUN /usr/sbin/a2enmod rewrite
RUN apt-get update && apt-get -y install php5-mcrypt && apt-get clean && rm -r /var/lib/apt/lists/*

# Enable mcrypt
RUN ln -s /etc/php5/conf.d/mcrypt.ini /etc/php5/mods-available/mcrypt.ini
RUN php5enmod mcrypt
