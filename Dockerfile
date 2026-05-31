FROM php:8.3-apache

# WordPress için gerekli PHP eklentileri ve URL yönlendirme modülü
RUN docker-php-ext-install mysqli pdo pdo_mysql \
    && a2enmod rewrite

# Yetkileri Apache (www-data) kullanıcısına devrediyoruz
RUN chown -R www-data:www-data /var/www/html
