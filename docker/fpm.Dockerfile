FROM php:7.2-fpm

RUN apt-get update \
&& docker-php-ext-install pdo pdo_mysql

CMD cd /var/www/
CMD chown -R $USER:www-data /var/www/storage
CMD chown -R $USER:www-data /var/www/bootstrap/cache
CMD chmod -R 775 /var/www/storage
CMD chmod -R 775 /var/www/bootstrap/cache
CMD cp .env-docker.example .env
CMD php artisan key:generate
CMD php artisan config:cache