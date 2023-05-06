#!/bin/sh

# issue with DNS resolving
sudo chmod 644 /etc/resolv.conf

# clean workspace folder
rm -rf /workspace/fedora
mkdir /workspace/fedora
ln -s /workspace/fedora ~/Projects
git init /workspace/fedora

cd ~

exit 0
