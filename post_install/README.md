### Post Install Scripts

Scripts to run after fresh installaion of Ubuntu. The scipt does the following
* Install required packages.(`install_packages.sh`)
* Install necessary python packages, set up bash, vim, spacemacs .etc. (`setup.sh`)
* Suggest a list of customizations to perform after installation. (`post_install.sh`)

#### Installation

Clone this repository using the following
(`git clone https://peregrine_falcon@bitbucket.org/peregrine_falcon/scripts.git ~/Downloads/scripts`)

Change directory to cloned repository
(`cd ~/Downloads/scripts/post_install`)

Give permissions
(`chmod +x install.sh`)

Runi (Note: Requires eleveted permissions)
(`./install.sh`)

