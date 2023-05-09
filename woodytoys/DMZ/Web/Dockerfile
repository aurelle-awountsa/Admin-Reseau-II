FROM php:7.4-apache

# Activer les modules Apache requis
RUN a2enmod rewrite
RUN a2enmod ssl

# Copier les fichiers de configuration Apache dans le conteneur
COPY ./config/apache/vhost.conf /etc/apache2/sites-available/000-default.conf
COPY ./config/apache/default-ssl.conf /etc/apache2/sites-available/default-ssl.conf

# Exposer le port 80 et le port 443
EXPOSE 80
EXPOSE 443

# Installer les dépendances requises
RUN apt-get update && \
    apt-get install -y \
        libicu-dev \
        libmcrypt-dev \
        libpng-dev \
        libjpeg-dev \
        libfreetype6-dev \
        libpq-dev \
        zip \
        unzip \
        nano \
        git \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install mysqli \
    && docker-php-ext-install gd \
    && docker-php-ext-install intl \
    && docker-php-ext-install opcache \
    && docker-php-ext-enable opcache

# page web
COPY html/ /var/www/html/


# Installer Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Copier le code source de l'application
COPY . /var/www/html

# Configurer les autorisations sur les fichiers
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html \
    && find /var/www/html -type d -exec chmod 755 {} \;

# Configuration de l'entrée de point pour le conteneur
ENTRYPOINT ["docker-php-entrypoint"]
CMD ["apache2-foreground"]

