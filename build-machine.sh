#!/home/runner/.dotfiles/activate.sh
machine fedora-devenv remove
machine fedora-devenv from dotfedora-cloud
machine fedora-devenv build .machine/Machinefile-rebase 
machine fedora-devenv export fedora-devenv

