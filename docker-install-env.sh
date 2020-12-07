#!/bin/bash

# install env
apt-get install wget -y
apt-get install lsb-release apt-transport-https ca-certificates software-properties-common -y

# install php8
add-apt-repository ppa:ondrej/php -y
apt-get update -y
apt-get install openssl php8.0-cli php8.0-common php8.0-curl php8.0-fpm php8.0-mbstring php8.0-mysql php8.0-xml php8.0-zip -y

# install composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"
