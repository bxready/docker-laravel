FROM nginx

ADD docker/conf/nginx/app.conf /etc/nginx/conf.d/default.conf

WORKDIR /var/www/lapp