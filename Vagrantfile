# -*- mode: ruby -*-
# vi: set ft=ruby :

## Test Network Provision

PUBLIC_KEY = File.read(File.expand_path('~/.ssh/id_rsa.pub')).strip
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network "public_network", :bridge => "wlp3s0"

  # WebApps
  numberOfApps = 4
  (1..numberOfApps).each do |i|
      config.vm.define "webApp#{i}" do |webApp|
	  config.vm.provider "virtualbox" do |vb|
	    # Do not display the VirtualBox GUI when booting the machine
	    vb.gui = false
	  
	    # Customize the amount of memory on the VM:
	    vb.memory = "512"
	    vb.cpus = 1
	    vb.name = "webApp#{i}"
	  end
          webApp.vm.network "private_network", ip: "10.0.0.10#{i}"
      end
  end

  config.vm.provision "shell", inline: <<-SHELL
    echo "#{PUBLIC_KEY}" >> /home/ubuntu/.ssh/authorized_keys
    apt-get update -y
    apt-get install -y python 
  SHELL
end
