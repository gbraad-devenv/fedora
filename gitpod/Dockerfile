FROM --platform=linux/amd64 ghcr.io/gbraad-devenv/fedora/base:41

USER root

# Add gitpod user with the expected ID (automated setup does not work atm)
RUN useradd -l -u 33333 -G wheel -md /home/gitpod -s /usr/bin/zsh -p gitpod gitpod

USER gitpod

RUN pip install pygments-style-tomorrownightbright
