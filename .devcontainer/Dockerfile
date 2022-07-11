FROM ghcr.io/gbraad/gitpod-devenv:0.3.0
USER root

COPY github/tailscaled /etc/init.d/tailscaled
RUN mkdir -p /var/run/tailscale /var/cache/tailscale /var/lib/tailscale

