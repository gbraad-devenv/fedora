#!/bin/sh

# clean workspace folder
rm -rf /workspaces/devenv
mkdir /workspaces/devenv
ln -s /workspaces/devenv ~/Projects
git init /workspaces/devenv

cd ~

exit 0
