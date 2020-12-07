#!/bin/bash

# install env
apt-get install htop nano wget -y

# install php8
apt-get install lsb-release apt-transport-https ca-certificates -y
wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/php.list
apt-get update -y
apt-get install php8* -y

# install mariadb
apt-get install mariadb-server -y