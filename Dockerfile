FROM wordpress:latest

# Gerekli klasör izinlerini Apache kullanıcısına (www-data) devrediyoruz.
RUN chown -R www-data:www-data /var/www/html \
    && find /var/www/html -type d -exec chmod 775 {} \; \
    && find /var/www/html -type f -exec chmod 664 {} \;
