#!/bin/bash

# Install php5.6 and extensions on Xenial
echo "==> Installing Php5.6 and extensions"
apt-get -y install software-properties-common
add-apt-repository -y ppa:ondrej/php
apt-get -y update
apt-get -y install php5.6
apt-get -y install php5.6-xml php5.6-soap php5.6-xdebug php5.6-mbstring php5.6-mysql php5.6-tidy php5.6-curl php5.6-gd php5.6-intl php5.6-mcrypt
php -v
