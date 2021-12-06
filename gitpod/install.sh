#!/bin/sh
rm -rf /workspace/devenv
mkdir ~/Projects
ln -s ~/Projects /workspace/devenv

if [ ! -d "~/.dotfiles" ]; then
    curl -sSL https://raw.githubusercontent.com/gbraad/dotfiles/master/install.sh -o /tmp/install.sh &&
    sh /tmp/install.sh &&
    mv ~/.bashrc-nochsh ~/.bashrc 
fi

