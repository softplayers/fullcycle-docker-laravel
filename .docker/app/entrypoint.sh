#!/bin/sh

echo -e '\e[32m# dockerize #\e[0m'
dockerize -wait tcp://db:3306 \
          -wait tcp://redis:6379 -timeout 40s \
          -template ./.docker/app/.env:.env

echo -e '\e[32m# composer install #\e[0m'
composer install

echo -e '\e[32m# php artisan key:generate #\e[0m'
php artisan key:generate

echo -e '\e[32m# php artisan config:cache #\e[0m'
php artisan config:cache

echo -e '\e[32m# php artisan migrate #\e[0m'
php artisan migrate

echo -e '\e[32m# php-fpm #\e[0m'
php-fpm
