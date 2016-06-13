#!/bin/bash

# Doing this in a separate script lets us do it step by step while using a
# single docker layer.

# Install tools
dnf remove -y vim-minimal
dnf install -y \
    git \
    htop

# Install Oh-my-zsh
# curl -sSL http://install.ohmyz.sh | sh

# Install personal dotfiles
cd root
curl -sSL https://raw.githubusercontent.com/gbraad/dotfiles/master/install.sh | sh

# Clean up
dnf clean all
