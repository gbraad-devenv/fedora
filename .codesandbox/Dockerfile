FROM --platform=linux/amd64 ghcr.io/gbraad-devenv/fedora/dotfiles:41

LABEL org.opencontainers.image.source = "https://github.com/gbraad-devenv/fedora"

USER root

RUN  dnf update -y tailscale \
     && dnf clean all \
     && rm -rf /var/cache/yum

USER gbraad
