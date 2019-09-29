#!/bin/sh
set -e

cd /var/www
./artisan cache:clear
./artisan config:cache

# first arg is `-f` or `--some-option`
if [ "${1#-}" != "$1" ]; then
	set -- php-fpm "$@"
fi

exec "$@"
