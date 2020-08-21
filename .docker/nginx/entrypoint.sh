#!/bin/sh

echo -e '\e[32m# dockerize #\e[0m'
dockerize -wait tcp://app:9000 -timeout 40s \
    -template /var/www/.docker/nginx/nginx.conf:/etc/nginx/conf.d/nginx.conf

echo -e '\e[32m# Starting nginx #\e[0m'
nginx -g 'daemon off;'
