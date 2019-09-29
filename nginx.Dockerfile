from nginx:1.17

ADD ./todo /var/www
ADD ./docker/nginx /etc/nginx/conf.d
