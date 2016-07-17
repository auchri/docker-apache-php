FROM eboraas/apache-php
MAINTAINER Christoph Auer <auer.chrisi@gmx.net>

RUN /usr/sbin/a2enmod rewrite
