# Dockerfile for custom WordPress image
FROM wordpress:latest

COPY ./themes /var/www/html/wp-content/themes
COPY ./plugins /var/www/html/wp-content/plugins
COPY ./wp-config.php /var/www/html/wp-config.php

RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
