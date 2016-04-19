#!/usr/bin/env bash

apt-get update -y

apt-get install make -y
apt-get install build-essential -y
apt-get install openssl -y
apt-get install libssl-dev -y
apt-get install pkg-config -y
apt-get install rabbitmq-server -y
apt-get install -y language-pack-en-base

## Add apache
apt-get install -y unzip vim git-core curl wget build-essential python-software-properties
LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php
apt-get update

#apt-get install -y nginx

add-apt-repository ppa:ondrej/apache2
apt-get update
apt-get install -y apache2

## Add php modules
apt-get install -y php7.0  php7.0-mysql php7.0-cli php7.0-curl libapache2-mod-php7.0 php7.0-json  php7.0-imap  php7.0-gd
apt-get install -y php7.0-dev git pkg-config build-essential libmemcached-dev php-memcached
apt-get install -y php-xdebug php-amqp

## Add composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

## Add the www dir
mkdir -p /var/www/html

apt-get install git -y
apt-get install aptitude -y
aptitude install libtool -y
aptitude install pkg-config -y

## Install rabbit mq
sudo apt-get install rabbitmq-server


## Install node
apt-get install -y nodejs
apt-get install -y npm

## Enable mod_rewrite
sudo a2enmod rewrite


sudo touch /etc/php/7.0/mods-available/apcu.ini
sudo chmod 777 /etc/php/7.0/mods-available/apcu.ini
sudo echo 'extension=apcu.so' > /etc/php/7.0/mods-available/apcu.ini

## Php configuration
sudo sed -i 's/^memory_limit = 128M/memory_limit = 256M/g' /etc/php/7.0/apache2/php.ini

sudo rm /etc/php/7.0/apache2/apcu.ini
sudo rm /etc/php/7.0/cli/apcu.ini
sudo ln -s /etc/php/7.0/mods-available/apcu.ini /etc/php/7.0/apache2/apcu.ini
sudo ln -s /etc/php/7.0/mods-available/apcu.ini /etc/php/7.0/cli/apcu.ini


## Finaly restart apache
sudo apachectl restart

## install Grunt / Phantom JS
apt-get install -y nodejs-legacy
npm install -g grunt-cli
npm install grunt-contrib-qunit --save-dev



