# Start with the official PHP image that includes the Apache web server
FROM php:apache

# Install the MySQLi extension that your PHP code needs to connect to the database
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Copy all of your GallaryCafe source code from your computer
# into the container's web directory (/var/www/html/)
COPY . /var/www/html/
