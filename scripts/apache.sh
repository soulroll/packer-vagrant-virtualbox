#!/bin/bash

# Install Apache
echo "==> Installing Apache"
apt-get install -y apache2
# Change apache to run as vagrant:vagrant
# https://github.com/ChiperSoft/Packer-Vagrant-Example/blob/master/packer/scripts/packages.sh
sed -i s/www-data/vagrant/ /etc/apache2/envvars
