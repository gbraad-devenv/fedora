FROM registry.fedoraproject.org/fedora:latest

USER root

# Needed for the experimental network mode (to support Tailscale)
RUN curl -o /usr/bin/slirp4netns -fsSL https://github.com/rootless-containers/slirp4netns/releases/download/v1.1.12/slirp4netns-$(uname -m) \
    && chmod +x /usr/bin/slirp4netns

RUN useradd -l -u 33333 -G wheel -md /home/gitpod -s /bin/bash -p gitpod gitpod \
    && sed -i.bkp -e 's/%wheel\s\+ALL=(ALL\(:ALL\)\?)\s\+ALL/%wheel ALL=NOPASSWD:ALL/g' /etc/sudoers

RUN dnf install -y git-core \
    && dnf clean all \
    && rm -rf /var/cache/yum

# install tailscale
RUN dnf config-manager --add-repo https://pkgs.tailscale.com/stable/fedora/tailscale.repo \
    && dnf install -y tailscale

RUN curl -sSL https://raw.githubusercontent.com/gbraad/dotfiles/master/install.sh | sh
