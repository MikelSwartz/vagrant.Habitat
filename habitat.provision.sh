#!/bin/bash
cd /vagrant/
yum update
yum install -y vim git tree wget unzip

#Install Habitat
cd /vagrant/

if [ -f "/vagrant/hab-0.22.1-20170509234454-x86_64-linux.tar.gz" ]
then
        echo "Habitat appears to be downloaded."
else
        wget  -O hab-0.22.1-20170509234454-x86_64-linux.tar.gz https://api.bintray.com/content/habitat/stable/linux/x86_64/hab-%24latest-x86_64-linux.tar.gz?bt_package=hab-x86_64-linux
fi

if [ -f "/usr/local/bin/hab" ]
then
        echo "Habitat appears to be installed."
else
	cd /vagrant/
	tar -xzvf hab-0.22.1-20170509234454-x86_64-linux.tar.gz
	mv hab-0.22.1-20170509234454-x86_64-linux/hab /usr/local/bin/
fi
