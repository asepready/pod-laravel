FROM composer:lts as build

WORKDIR /app
COPY . /app
RUN composer install

FROM php:8.0.2-fpm-alpine3.12 as runtime
EXPOSE 80
COPY --from=build /app /app
COPY vhost.conf /etc/apache2/sites-available/000-default.conf
RUN chown -R www-data:www-data /app \
    && a2enmod rewrite
