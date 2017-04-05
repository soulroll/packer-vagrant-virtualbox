#!/bin/bash

# Add no-password sudo config for vagrant user
echo "%vagrant ALL=NOPASSWD:ALL" > /etc/sudoers.d/vagrant
echo "Defaults:vagrant !requiretty" >> /etc/sudoers.d/vagrant
chmod 0440 /etc/sudoers.d/vagrant

# Allow Vagrant user to get in without a password by creating a temporary SSH key
mkdir -p /home/vagrant/.ssh # Make nested directories if they don't exist already.
cd /home/vagrant/.ssh
wget --no-check-certificate 'https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub' -O authorized_keys

# Change owner and permissions
chown -R vagrant /home/vagrant/.ssh
chmod 700 /home/vagrant/.ssh
chmod 600 /home/vagrant/.ssh/authorized_keys

# Disable reverse lookup in SSH to speed things up
echo "UseDNS no" >> /etc/ssh/sshd_config

# Disable GSSAPI Authentication to speed things up
echo "GSSAPIAuthentication no" >> /etc/ssh/sshd_config
