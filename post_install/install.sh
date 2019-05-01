#!/bin/bash
# Title: post_install.sh
# Author: Abhinandan K N

# make scripts executable
cd ~/Documents/Scripts
chmod +x install_packages.sh \
         setup.sh \
         post_install.sh

# install packages
sudo ./install_packages.sh

# setup development tools and fonts
./setup.sh

# post install suggestions
./post_install.sh
