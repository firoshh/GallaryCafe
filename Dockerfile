FROM php:apache
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
COPY . /var/www/html/

# --- FULL PERMISSIONS FIX ---
# 1. Set the correct owner (like before)
RUN chown -R www-data:www-data /var/www/html

# 2. Set the correct permissions
#    (Directories need to be 'executable' to be opened)
RUN find /var/www/html -type d -exec chmod 755 {} \;
#    (Files just need to be 'readable')
RUN find /var/www/html -type f -exec chmod 644 {} \;