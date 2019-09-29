FROM php:7.2-fpm

RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer && \
    apt-get update && apt-get install -y git zip zlib1g-dev libzip-dev && \
    docker-php-ext-install zip && \
    docker-php-ext-install pdo_mysql && \
    apt-get remove -y zip zlip1g-dev libzip-dev && \
    apt-get clean autoclean && \
    apt-get autoremove -y && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/*
