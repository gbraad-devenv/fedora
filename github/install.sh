#!/bin/sh

# clean workspace folder
rm -rf /workspaces/fedora
mkdir /workspaces/fedora
ln -s /workspaces/fedora ~/Projects
git init /workspaces/fedora

cd ~

# additional files
pip install ipykernel

exit 0
