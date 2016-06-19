#!/bin/bash

# Doing this in a separate script lets us do it step by step while using a
# single docker layer.

# Install tools
dnf remove -y vim-minimal
dnf install -y \
    sudo \
    git \
    ansible \
    python-pip \
    python2-dnf \
    htop

# Install Oh-my-zsh
# curl -sSL http://install.ohmyz.sh | sh

# Add personal user
adduser gbraad
echo "gbraad ALL=(root) NOPASSWD:ALL" | tee -a /etc/sudoers.d/gbraad
chmod 0440 /etc/sudoers.d/gbraad

# Install personal dotfiles
curl -sSL https://raw.githubusercontent.com/gbraad/dotfiles/master/install.yml -o /tmp/install.yml
su - gbraad -c "ansible-playbook /tmp/install.yml"

# Clean up
dnf clean all
