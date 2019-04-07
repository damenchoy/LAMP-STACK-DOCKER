FROM php:5.6.40-apache

RUN apt-get update 
#RUN docker-php-ext-install pdo pdo_mysql
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN apt-get install -y --no-install-recommends ssl-cert && rm -r /var/lib/apt/lists/* && a2enmod ssl && a2ensite default-ssl 
EXPOSE 80 443
