#!/bin/sh
sudo ssh-keygen -A   # make sure we have new host keys

rm -rf /workspace/devenv
mkdir ~/Projects
ln -s ~/Projects /workspace/devenv

cd ~

if [ ! -d "~/.dotfiles" ]; then
    curl -sSL https://raw.githubusercontent.com/gbraad/dotfiles/master/install.sh -o /tmp/install.sh &&
    sh /tmp/install.sh &&
    mv ~/.bashrc-nochsh ~/.bashrc 
fi

# start openssh-server
sudo /usr/sbin/sshd &

exit 0

