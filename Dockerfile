FROM php:7.3.6-fpm-alpine3.9

RUN apk add composer mysql-client shadow
RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www
RUN rm -rf /var/www/html
RUN ln -s public html

RUN usermod -u 1000 www-data
USER www-data

EXPOSE 9000
ENTRYPOINT ["php-fpm"]
