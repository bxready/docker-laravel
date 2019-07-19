FROM php:7.2-fpm

RUN apt-get update \
&& docker-php-ext-install pdo pdo_mysql

RUN chown -R $USER:www-data storage
RUN chown -R $USER:www-data bootstrap/cache
RUN chmod -R 775 storage
RUN chmod -R 775 bootstrap/cache