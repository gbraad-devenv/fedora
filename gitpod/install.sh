#!/bin/sh

# issue with DNS resolving
sudo chmod 644 /etc/resolv.conf

# clean workspace folder
rm -rf /workspace/devenv
mkdir /workspace/devenv
ln -s /workspace/devenv ~/Projects
git init /workspace/devenv

cd ~

exit 0
