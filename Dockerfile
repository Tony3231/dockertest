# Use an official PHP runtime as a parent image
FROM php:7.4-apache
 
# Set the working directory in the container
WORKDIR /var/www/html
 
# Copy the current directory contents into the container at /var/www/html
COPY . .
 
# If you need to install additional PHP extensions, you can do it like this:
# RUN docker-php-ext-install pdo pdo_mysql
 
# Expose port 80 to allow outside access to your web server
EXPOSE 80

...

HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
  CMD curl -f http://localhost/health || exit 1
