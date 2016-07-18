FROM eboraas/apache-php
MAINTAINER Christoph Auer <auer.chrisi@gmx.net>

RUN /usr/sbin/a2enmod rewrite
RUN apt-get update && apt-get -y install php5-mcrypt && apt-get clean && rm -r /var/lib/apt/lists/*
