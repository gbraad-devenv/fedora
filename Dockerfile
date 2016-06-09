FROM fedora:23
MAINTAINER Gerard Braad <me@gbraad.nl>

# Install tools
RUN dnf install -y git && \
    dnf install -y htop && \
    dnf remove -y vim-minimal && \
    dnf install -y vim && \
    dnf install -y tmux && \
    dnf install -y zsh

RUN curl -sSL http://install.ohmyz.sh | sh

CMD ["/bin/zsh"]
