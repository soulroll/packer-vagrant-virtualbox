# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    config.vm.box = "file://builds/xenial.box"
    config.vm.network "private_network", ip: "192.168.33.10"
    config.vm.network "forwarded_port", guest: 80, host: 8080
    config.vm.hostname = "xenial64"
    config.ssh.username = 'vagrant'
    config.ssh.password = 'vagrant'
    config.vm.synced_folder ".", "/var/www/", :mount_options => ["dmode=777", "fmode=666"]





      # Create a forwarded port mapping which allows access to a specific port
      # within the machine from a port on the host machine.
      # Forward MySql port on 33066, used for connecting admin-clients to localhost:33066
      config.vm.network :forwarded_port, guest: 3306, host: 33066
      # Forward http port on 8080, used for connecting web browsers to localhost:8080
      config.vm.network :forwarded_port, guest: 80, host: 8080
      # Forward http port on 8025, used for connecting web browsers to MailHog
      config.vm.network :forwarded_port, guest: 8025, host: 8025

      # Create a private network, which allows host-only access to the machine
      # using a specific IP.
      config.vm.network :private_network, ip: "192.168.33.10"

      # Set share folder permissions to 777 so that apache can write files
      config.vm.synced_folder ".", "/vagrant", mount_options: ['dmode=777','fmode=666']



    # Optional NFS. Make sure to remove other synced_folder line too
    # config.vm.synced_folder ".", "/var/www", :nfs => { :mount_options => ["dmode=777","fmode=666"] }

end
