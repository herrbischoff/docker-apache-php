## Base image
FROM alpine

## Maintainer info
MAINTAINER Marcel Bischoff <marcel@herrbischoff.com>

## Install Apache and PHP
RUN apk add --update apache2 php-apache2 php-zip php-xml php-zlib php-opcache php-pdo_odbc php-soap php-pgsql php-pdo php-mysqli php-json php-mcrypt php-openssl && \
  rm -rf /var/cache/apk/*

## Remove PHP version exposure
RUN sed -ir 's/expose_php = On/expose_php = Off/' /etc/php/php.ini

## Copy modified httpd.conf into container
COPY httpd.conf /etc/apache2/httpd.conf

## Expose port
EXPOSE 80

## Set working directory
WORKDIR /var/www/localhost/htdocs

## Run Couchpotato
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
