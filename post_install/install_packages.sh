#!/bin/bash
# Title: install_packages.sh
# Author: Abhinandan K N

echo "Running install_packages.sh"
echo "To be run with eleveted previlages"

# Initialize
cd ~                         # Change Directory to Home
apt update && apt upgrade -y # Initial Update and Upgrade
clear

# Install Basic Packages
apt install -y \
    build-essential \
    chrome-gnome-shell \
    clang \
    curl \
    dconf-cli \
    emacs \
    fonts-powerline \
    flatpak \
    gcc \
    git \
    gnome-shell-extensions \
    gnome-tweaks \
    htop \
    python3-dev \
    python3-pip \
    synaptic \
    tmux \
    vim \
    virtualbox \
    vlc \
    zathura
echo "Finished Installing Basic Packages"

# Install additional packages
apt-add-repository -y ppa:teejee2008/ppa                                       # Timeshift
apt-add-repository -y ppa:system76/pop                                         # Pop Theme
apt-add-repository -y ppa:danielrichter2007/grub-customizer                    # grub-customizer
apt update && apt upgrade -y                                                   # update and upgrade after ppa

apt install -y \
    timeshift \
    pop-theme \
    grub-customizer

cd ~/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb # Google Chrome
apt install -y ~/Downloads/google-chrome-stable_current_amd64.deb 
clear
echo "Finished Installing Additional Packages"

# Update and upgrade
apt update && apt upgrade -y
clear
echo "Finished Updating and Upgrading"

# Clean up
apt autoremove -y
rm ~/Downloads/google-chrome-stable_current_amd64.deb
clear

