# Packer + Vagrant + Virtualbox + Ubuntu 16.04 Server
Automates the creation of any type of machine image.

## Requirements
1. Virtualbox (sudo apt-get install virtualbox)
2. Packer https://www.packer.io/ (Download and place in your /usr/local/bin/ folder)
3. Vagrant (sudo apt-get install vagrant)

## Usage
1. Packer build template.json

## Template.json
This file explains to Packer how to build the development box, what vm hardware specifications to use, the which files to copy and what scripts to run.

## Preseed.cfg
Used by the Ubuntu installer and will automate the Ubuntu installation by automatically providing answers to all of the installation prompts.

## Scripts folder
This contains a bunch of script files called from template.json during installation.

