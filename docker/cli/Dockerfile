FROM php:7.2

RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer && \
    apt-get update && apt-get install -y git zip zlib1g-dev libzip-dev

RUN docker-php-ext-install zip && \
    docker-php-ext-install pdo && \
    docker-php-ext-install pdo_mysql
