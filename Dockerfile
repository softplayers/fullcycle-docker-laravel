FROM php:7.3.6-fpm-alpine3.9

RUN apk add composer mysql-client

WORKDIR /var/www
RUN rm -rf /var/www/html

#COPY . /var/www
RUN composer create-project laravel/laravel .
RUN ln -s public html

RUN docker-php-ext-install pdo pdo_mysql
RUN composer install && \
	cp .env.example .env && \
	php artisan key:generate && \
	php artisan config:cache

EXPOSE 9000
ENTRYPOINT ["php-fpm"]
