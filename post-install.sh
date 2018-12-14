#!/bin/bash
# Author: Abhinandan K N

# Initialize
echo "Running Post Install Script"

cd ~                         # Change Directory to Home
apt update && apt upgrade -y # Initial Update and Upgrade

# Install Basic Packages
apt install -y \
    albert \
    build-essential \
    clang \
    curl \
    emacs \
    gcc \
    git \
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

# Install Additional Packages
apt-add-repository -y ppa:teejee2008/ppa                    # Timeshift
apt-add-repository -y ppa:system76/pop                      # Pop Theme
apt-add-repository -y ppa:danielrichter2007/grub-customizer # grub-customizer
apt update && apt upgrade -y                                # update and upgrade after ppa

apt install -y \
    timeshift \
    pop-theme \
    grub-customizer

echo "Finished Installing Additional Packages"

# Download and Install Debian Packages
cd ~/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb # Google Chrome
wget https://download2.tixati.com/download/tixati_2.58-1_amd64.deb             # Tixati

apt install ~/Downloads/google-chrome-stable_current_amd64.deb 
apt install ~/Downloads/tixati_2.58-1_amd64.deb

cd ~
echo "Finished Installing Debian Packages"

# Git Clone .dotfiles Repository
git clone https://peregrine_falcon@bitbucket.org/peregrine_falcon/dotfiles.git

echo "Cloned .dotfiles"

# Install Fonts
cp -r ~/.dotfiles/fonts/Inconsolata/ /usr/share/fonts/        # Inconsolata
cp -r ~/.dotfiles/fonts/SystemSanFransisco/ /usr/share/fonts/ # System San Fransisco
cp -r ~/.dotfiles/fonts/SourceCodePro/ /usr/share/fonts/      # Source Code Pro
cp -r ~/.dotfiles/fonts/AppleGaramond/ /usr/share/fonts/      # Apple Garamond
apt install fonts-powerline                                   # Power line

echo "Finished Installing Fonts"

# Install Python Packages
pip3 install yapf
pip3 install jedi
pip3 install flake8
pip3 install pylint

echo "Finished Installing Python Packages"

# Update and Upgrade
apt update && apt upgrade -y

echo "Finished Updating and Upgrading"

# Create Backups Directory
mkdir ~/Backups
mkdir ~/Backups/Config_Files

echo "Finished Creating Backups Directory"

# Set up Bash
cd ~
mv .bashrc ~/Backups
ln -sf ~/.dotfiles/bashrc .bashrc         # symbolically link bashrc to .bashrc
ln -sf ~/.dotfiles/bash_alias .bash_alias # symbolically link bash_alias to .bash_alias

echo "Finished Setting up Bash"

# Set up Vim
cd ~
mv .vimrc ~/Backups
ln -sf ~/.dotfiles/vimrc .vimrc                                                # Symbolically link vimrc to .vimrc

mkdir ~/.vim                                                                   # Make necessary directories
mkdir ~/.vim/bundle

cd ~/Downloads                                                                 # Theme
git clone https://github.com/chriskempson/tomorrow-theme.git
cp -r tomorrow-theme/vim/colors/ ~/.vim/

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim # Set up Vundle

rm -Rf ~/Downloads/tomorrow-theme                                              # Remove unnecessary files

echo "Finished Setting up Vim"

# Set up Spacemacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
ln -sf ~/.dotfiles/spacemacs .spacemacs # symbolically link spacemacs to .spacemacs

echo "Finished Setting up Spacemacs"

# Set up Tmux
ln -sf ~/.dotfiles/tmux.conf .tmux.conf             # symbolically link tmux.conf to .tmux.conf
ln -sf ~/.dotfiles/tmux.conf.local .tmux.conf.local # symbolically link tmux.conf.local to .tmux.conf.local

echo "Finished Setting up Tmux"

# Remaining tasks
echo "Finished..."
echo "Remaining Tasks"
echo "Install Grub Theme and Configure GRUB"
echo "Install Visual Studio Code"
echo "Configure Pop Icon Theme"

