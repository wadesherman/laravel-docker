FROM php:7.2-apache

RUN apt-get update

# Install Postgre PDO
RUN apt-get install -y libpq-dev \
    && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
    && docker-php-ext-install pdo pdo_pgsql pgsql

#COPY ./laravel/ /var/www/html/

RUN chown -R www-data:www-data /var/www/html/
#RUN chmod -R 755 /var/www/html/bootstrap/cache/
#RUN chmod -R 755 /var/www/html/storage/


RUN a2dissite 000-default.conf
COPY ./laravel.conf /etc/apache2/sites-available/
RUN a2ensite laravel.conf
RUN a2enmod rewrite negotiation
RUN service apache2 restart
