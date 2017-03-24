#!/bin/bash

# Check to see if VirtualBox
echo "==> Check if running VirtualBox"
if [ ! -e /home/vagrant/.vbox_version ]; then
	exit 0
fi

# Install VirtualBox Guest Additions dependancies
echo "==> Installing VirtualBox Guest Additions dependancies"
apt-get -y install linux-headers-$(uname -r) build-essential dkms  &> /dev/null

# Install VirtualBox Guest Additions
echo "==> Installing VirtualBox Guest Additions"
mkdir -p /mnt/virtualbox
mount -o loop /home/vagrant/VBoxGuest*.iso /mnt/virtualbox
sh /mnt/virtualbox/VBoxLinuxAdditions.run
ln -s /opt/VBoxGuestAdditions-*/lib/VBoxGuestAdditions /usr/lib/VBoxGuestAdditions
umount /mnt/virtualbox
rm -rf /home/vagrant/VBoxGuest*.iso
