#!/usr/bin/env bash

# Download and install updates
echo "==> Performing updates"
apt-get clean
apt-get -y update  &> /dev/null
apt-get -y upgrade &> /dev/null
