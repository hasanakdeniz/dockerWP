FROM php:8.3-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql \
    && a2enmod rewrite

# Her açılışta izinleri www-data (33) olarak ayarlar ve Apache'yi başlatır
CMD chown -R www-data:www-data /var/www/html && chmod -R 2775 /var/www/html && apache2-foreground
