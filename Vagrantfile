# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
  end
  config.vm.define "habitat" do |habitat|
          habitat.vm.box =  "bmcgonigle/centos68"
	  habitat.vm.hostname = "habatat"
          habitat.vm.network :private_network, ip: "192.168.50.5", bridge: "eth0"
# forwarded port if you need it. 
#	  habitat.vm.network "forwarded_port", guest: 80, host: 8010
	  habitat.vm.provision "shell",
            path: "habitat.provision.sh"
  end
end
