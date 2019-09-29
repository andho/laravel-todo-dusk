FROM php:7.2-fpm

ADD ./todo/composer.json /var/www/composer.json
ADD ./todo/composer.lock /var/www/composer.lock

RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer && \
    apt-get update && apt-get install -y git zip && \
    docker-php-ext-install pdo_mysql && \
    cd /var/www && \
    composer install --no-dev --no-interaction --no-scripts --no-autoloader && \
    apt-get remove -y zip git && \
    apt-get clean autoclean && \
    apt-get autoremove -y && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/* && \
    rm -rf /root/.composer

ADD ./todo /var/www

RUN cd /var/www && composer dump-autoload --no-scripts --no-dev --optimize && \
    chown -R www-data:www-data /var/www/storage
