#!/bin/sh

# make sure we have new host keys
sudo ssh-keygen -A

# clean workspace folder
rm -rf /workspace/devenv
mkdir /workspace/devenv
ln -s /workspace/devenv ~/Projects

cd ~

# install dotfiles
if [ ! -d "~/.dotfiles" ]; then
    curl -sSL https://raw.githubusercontent.com/gbraad/dotfiles/master/install.sh -o /tmp/install.sh &&
    sh /tmp/install.sh &&
    mv ~/.bashrc-nochsh ~/.bashrc 
fi

# start openssh-server
sudo /usr/sbin/sshd &

exit 0
