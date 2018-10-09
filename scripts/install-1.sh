#!/bin/bash
mkdir workspace

## Install dependencies for RVM and NVM
sudo yum install -y curl gpg gcc gcc-c++ make
sudo yum install -y postgresql-devel
sudo yum install -y libtool-ltdl-devel
sudo yum install -y xmlsec1-devel

## Install RVM
sudo gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | sudo bash -s stable
sudo usermod -a -G rvm `whoami`

if sudo grep -q secure_path /etc/sudoers; then sudo sh -c "echo export rvmsudo_secure_path=1 >> /etc/profile.d/rvm_secure_path.sh" && echo Environment variable installed; fi

rvm group add rvm "$USER"


echo "Linux requires a refresh of the current users groups.  Please close this terminal and open a a new one.  Then run ./scripts/install-2.sh"