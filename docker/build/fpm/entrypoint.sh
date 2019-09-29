#!/bin/bash
set -e

./artisan cache:clear
./artisan config:cache

exec /usr/local/bin/docker-php-entrypoint "$@"
