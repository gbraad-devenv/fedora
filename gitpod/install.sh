#!/bin/sh

# make sure we have new host keys
sudo ssh-keygen -A

# clean workspace folder
rm -rf /workspace/devenv
mkdir /workspace/devenv
ln -s /workspace/devenv ~/Projects

cd ~

# install dotfiles
if [ ! -d "~/.dotfiles" ]; then
    curl -sSL https://raw.githubusercontent.com/gbraad/dotfiles/master/install.sh -o /tmp/install.sh &&
    sh /tmp/install.sh &&
    mv ~/.bashrc-nochsh ~/.bashrc 
fi

# start openssh-server
sudo /usr/sbin/sshd &

echo ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDGQNnZlWzDgFWbpw4GhRiBPEqmDRaYBjxF8fNX5m8dzx6EHS1F0HnMprDJ9+lJ5sGvwTZyApvpYdUe9Y7e9mTjf7cenjdBp/EIF43J3NhEa5yeVNJPk9lCK56vxZDAJSiEny1Rv9yH+ewWMlW2lQo2bHHDDrehSjqQJ5zHizs7YAx4cpfTPn61fDmbNEmF5JU9Ti4HfSr+5LMVDLP7uXAgeCZy4T+bc5kfYhbTwbSAvCcFXieRUcQbFhIEeNZWjx3qtNe1LQW8YSsKMVOJpC+i8W8YrMtNWdkscl0dJwtnOnOxYaSK0x2DmVbyVsGG8io8ohPUUA+REBCjIOXCqa1l > ~/.authorized_keys
echo ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDDDIDCGyj9hKnh01rqru35aOGStC86sPwuf14ypebIXVsbTjEyoPNN+lyNn0zULGQX0scVBUZYHoPaFGy/mmPu9NbMH8JgjuoDXp9vLYYw/mPYO8NlKlZOrB+Or6T376c8+kI9CGoY6TSJJ7JPdJMTjRi5CtYbfpV1ViN1HlmwtFkCG5SRe9PsPazMup73pCKn/OELxSngJRNGkGeM4dhqJxIDFn0F+t5icrqHwCEhmSaff+PGbFXx9fSm5zRHS0lvvSXxfZrsBCO0Nv/Km2cit51WzDBYIehp35DafS85x+4UN4bRg6MGT5aBK4rGfVVde+YQ8xbF6897dywbmMl9 > ~/.authorized_keys

exit 0
