#!/bin/sh
if [ ! -d "~/.dotfiles" ]; then
    curl -sSL https://raw.githubusercontent.com/gbraad/dotfiles/master/install.sh -o /tmp/install.sh &&
    sh /tmp/install.sh &&
    mv ~/.bashrc-nochsh ~/.bashrc 
fi

rm -rf /workspace/devenv

ln -s /workspace/devenv/ ~/Projects
