# -*- mode: ruby -*-
# vi: set ft=ruby :

PUBLIC_KEY = File.read(File.expand_path('~/.ssh/id_rsa.pub')).strip
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network "public_network", :bridge => "wlp3s0"

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
          webApp.vm.network "private_network", ip: "10.0.0.10#{i}"
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
  config.vm.provision "shell", inline: <<-SHELL
    echo "#{PUBLIC_KEY}" >> /home/ubuntu/.ssh/authorized_keys
    apt-get update -y
    apt-get install -y python 
  SHELL
end
