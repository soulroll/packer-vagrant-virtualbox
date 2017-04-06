# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    # Import VM generated with packer and virtualbox
    config.vm.box = "file://builds/xenial.box"

    # Set up the Lan IP for the VM
    config.vm.network "private_network", ip: "192.168.33.10"

    # Forward http port on 8080, used for connecting web browsers to localhost:8080
    config.vm.network "forwarded_port", guest: 80, host: 8080

    # Forward MySql port on 33066, used for connecting admin-clients to localhost:33066
    config.vm.network "forwarded_port", guest: 3306, host: 33066

    config.vm.hostname = "xenial64"
    config.ssh.username = "vagrant"
    config.ssh.password = "vagrant"

    # Set share folder permissions to 777 so that apache can write files
    config.vm.synced_folder "./www", "/var/www", create: true, mount_options: ['dmode=777','fmode=666']

    # Optional NFS. Make sure to remove other synced_folder line too
    # config.vm.synced_folder ".", "/var/www", :nfs => { :mount_options => ["dmode=777","fmode=666"] }

end
