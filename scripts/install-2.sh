#!/bin/bash
# Setup NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
export NVM_DIR="${XDG_CONFIG_HOME/:-$HOME/.}nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Install the proper node version and yarn
nvm install 8.10.0 && nvm use 8.10.0
nvm use --delete-prefix v8.10.0
npm install -g yarn@1.10.1

# Install Ruby
rvm install ruby-2.4

# Install Bundler
gem install bundler -v 1.16.4

# Install Coffee Script
npm install -g coffee-script@1.6.2

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose