# -*- mode: ruby -*-
# vi: set ft=ruby :

PUBLIC_KEY = File.read(File.expand_path('~/.ssh/id_rsa.pub')).strip
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network "public_network"

  # WebApps
  numberOfApps = 3
  (1..numberOfApps).each do |i|
      config.vm.define "webApp#{i}" do |webApp|
	  config.vm.provider "virtualbox" do |vb|
	    # Display the VirtualBox GUI when booting the machine
	    vb.gui = false
	  
	    # Customize the amount of memory on the VM:
	    vb.memory = "512"
	    vb.cpus = 1
	    vb.name = "webApp#{i}"
	  end
      end
  end
#  config.vm.define "maquina2" do |maq2|
#	  config.vm.provider "virtualbox" do |vb|
#	    # Display the VirtualBox GUI when booting the machine
#	    vb.gui = false
#	  
#	    # Customize the amount of memory on the VM:
#	    vb.memory = "1024"
#	    vb.cpus = 1
#	    vb.name = "sdb03_b"
#	  end
#          maq2.vm.network "private_network", ip: "10.0.0.102"
#  end
#
#  config.vm.provision "shell", inline: <<-SHELL
#    apt-get -y update
#    apt-get -y upgrade
#    apt-get -y autoremove
#    apt-get install -y vim
#    echo "#{PUBLIC_KEY}" >> /home/ubuntu/.ssh/authorized_keys
#    sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
#    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#    sudo apt-key fingerprint 0EBFCD88
#    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
#    sudo apt-get -y update
#    sudo apt-get -y install docker-ce
#    sudo curl -L https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
#    sudo chmod +x /usr/local/bin/docker-compose
#  SHELL
end
