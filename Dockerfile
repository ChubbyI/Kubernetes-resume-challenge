FROM php:7.4-apache

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli && \
    service apache2 restart

COPY . /var/www/html/

RUN sed -i 's/loclalost/mysql-service/g' /var/www/html/ #congig.php

EXPOSE 80

