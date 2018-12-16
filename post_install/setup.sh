#!/bin/bash
# Title: setup.h
# Author: Abhinandan K N

echo "Running setup.sh"
echo "Sets up pip packages, fonts, bash, vim, spacemacs and tmux"

# Install pip packages
pip3 install yapf
pip3 install jedi
pip3 install flake8
pip3 install pylint
clear
echo "Finished installing pip packages"

# Git clone .dotfiles repository
git clone https://peregrine_falcon@bitbucket.org/peregrine_falcon/dotfiles.git ~/.dotfiles
clear
echo "Cloned .dotfiles"

# Install fonts
sudo cp -r ~/.dotfiles/fonts/Roboto/ /usr/share/fonts/        # Roboto
sudo cp -r ~/.dotfiles/fonts/Roboto_Mono/ /usr/share/fonts/   # Roboto Mono
sudo cp -r ~/.dotfiles/fonts/Inconsolata/ /usr/share/fonts/   # Inconsolata
sudo cp -r ~/.dotfiles/fonts/IBM_Plex_Mono/ /usr/share/fonts/ # IBM Plex Mono
sudo cp -r ~/.dotfiles/fonts/SourceCodePro/ /usr/share/fonts/ # Source Code Pro
clear
echo "Finished installing fonts"

# Create a backups directory
mkdir ~/Backups
mkdir ~/Backups/Config_Files
clear
echo "Finished creating backups directory"

# Set up Bash
cd ~
mv .bashrc ~/Backups
ln -sf ~/.dotfiles/bashrc.default .bashrc # symbolically link bashrc to .bashrc
clear
echo "Finished setting up bash"

# Set up Vim
cd ~
ln -sf ~/.dotfiles/vimrc .vimrc   
mkdir ~/.vim                      # Make necessary directories
mkdir ~/.vim/bundle

cd ~/Downloads                    # Theme
git clone https://github.com/chriskempson/tomorrow-theme.git
cp -r tomorrow-theme/vim/colors/ ~/.vim/

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
rm -Rf ~/Downloads/tomorrow-theme # Remove unnecessary files
clear
echo "Finished setting up vim"

# Set up Spacemacs
cd ~
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
ln -sf ~/.dotfiles/spacemacs .spacemacs 
clear
echo "Finished setting up spacemacs"

# Set up Tmux
cd ~
ln -sf ~/.dotfiles/tmux/tmux.conf .tmux.conf             
ln -sf ~/.dotfiles/tmux/tmux.conf.local .tmux.conf.local 
clear
echo "Finished setting up tmux"

