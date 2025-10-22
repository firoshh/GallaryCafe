FROM php:apache
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Copy everything first
COPY . /var/www/html/

# Explicitly copy the image folder
COPY images /var/www/html/images/

# Set permissions
RUN chown -R www-data:www-data /var/www/html
RUN find /var/www/html -type d -exec chmod 755 {} \;
RUN find /var/www/html -type f -exec chmod 644 {} \;