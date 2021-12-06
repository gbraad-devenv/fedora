FROM registry.fedoraproject.org/fedora:latest

USER root

# Needed for the experimental network mode (to support Tailscale)
RUN curl -o /usr/bin/slirp4netns -fsSL https://github.com/rootless-containers/slirp4netns/releases/download/v1.1.12/slirp4netns-$(uname -m) \
    && chmod +x /usr/bin/slirp4netns

RUN useradd -l -u 33333 -G wheel -md /home/gitpod -s /bin/bash -p gitpod gitpod \
    && sed -i.bkp -e 's/%wheel\s\+ALL=(ALL\(:ALL\)\?)\s\+ALL/%wheel ALL=NOPASSWD:ALL/g' /etc/sudoers

# essential packages
RUN dnf install -y dnf-plugins-core git-core \
    && dnf clean all \
    && rm -rf /var/cache/yum

# install tailscale
RUN dnf config-manager --add-repo https://pkgs.tailscale.com/stable/fedora/tailscale.repo \
    && dnf install -y tailscale

RUN curl -sSL https://raw.githubusercontent.com/gbraad/dotfiles/master/install.sh | sh

RUN dnf install -y \
        mc vim tmux screen links lynx z \
    && dnf clean all \
    && rm -rf /var/cache/yum

# powerline
RUN dnf install -y \
        powerline vim-powerline tmux-powerline \
    && dnf clean all \
    && rm -rf /var/cache/yum


# fonts
RUN dnf install -y \
        adobe-source-han-mono-fonts \
        adobe-source-code-pro-fonts \
        adobe-source-sans-pro-fonts \
        adobe-source-serif-pro-fonts \
        powerline-fonts \
    && dnf clean all \
    && rm -rf /var/cache/yum

# optiona
RUN dnf install -y \
        python3-pygments \
    && dnf clean all \
    && rm -rf /var/cache/yum
    
# vim
RUN dnf install -y \
        vim-syntastic-asciidoc \
        vim-syntastic-html \
        vim-syntastic-css \
        vim-syntastic-vim \
        vim-syntastic-yaml \
        vim-syntastic-json \
        vim-syntastic-go \
        vim-syntastic-javascript \
        vim-syntastic-zsh \
        vim-airline \
        vim-go \
        vim-ctrlp \
        vim-gitgutter \
        vim-fugitive \
        vim-nerdtree \
    && dnf clean all \
    && rm -rf /var/cache/yum

# ranger
RUN dnf install -y \
        ranger \
        highlight \
    && dnf clean all \
    && rm -rf /var/cache/yum

# graphical
RUN dnf install -y \
        i3 \
        python3-i3ipc \
        feh \
    && dnf clean all \
    && rm -rf /var/cache/yum

RUN dnf install -y \
        trash-cli \
        fzf \
        vgrep \
        fd-find \
        ripgrep \
    && dnf clean all \
    && rm -rf /var/cache/yum
        
USER gitpod

RUN pip install pygments-style-tomorrownightbright
