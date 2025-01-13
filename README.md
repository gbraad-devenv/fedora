Gerard Braad's Fedora development environment
=============================================

!["Prompt"](https://raw.githubusercontent.com/gbraad/assets/gh-pages/icons/prompt-icon-64.png)


Installation and deployment scripts for my personal development environment.


Usage
-----

### Cloud

  * Open in [Gitpod workspace](https://gitpod.io/#https://github.com/gbraad-devenv/fedora)
  * Open in [GitHub Codespaces](https://codespaces.new/gbraad-devenv/fedora)
  * Open in [CodeSandbox](https://codesandbox.io/p/github/gbraad-devenv/fedora)
  * `dev fed env`, `dev fed sys` in [my dotfiles](https://github.com/gbraad/dotfiles/blob/main/zsh/.zshrc.d/devenv.zsh)
  * Toobox/distrobox using `ghcr.io/gbraad-devenv/fedora/toolbox:41`


### Podman

```bash
$ podman run -it ghcr.io/gbraad-devenv/fedora/dotfiles:40 /bin/zsh 
```

or with [Tailscale](https://tailscale.com) enabled:

```bash
$ podman run -it --cap-add=NET_ADMIN --cap-add=NET_RAW --device=/dev/net/tun ghcr.io/gbraad-devenv/fedora/dotfiles:40 /bin/zsh
```

> [!NOTE]
> For more information about the [container](docs/podman.md) build and usage in [my dotfiles](https://github.com/gbraad/dotfiles/blob/main/zsh/.zshrc.d/devenv.zsh)


### Devbox
Running devenv using Toolbox/distrobox

#### Distrobox
```
$ distrobox create -i ghcr.io/gbraad-devenv/fedora/toolbox:41 -n devbox-fedora41
```

> [!NOTE]
> Since distrobox does not report download progress, it is advised to pull first
> ```
> $ podman pull ghcr.io/gbraad-devenv/fedora/toolbox:41
> ```

#### Toolbox
```
$ toolbox create -i ghcr.io/gbraad-devenv/fedora/toolbox:41 devbox-fedora41
```

> [!NOTE]
> I strongly suggest against the use of Toolbx. Too many issues when used with custom images that do not use `root`.

Authors
-------

| [!["Gerard Braad"](http://gravatar.com/avatar/e466994eea3c2a1672564e45aca844d0.png?s=60)](http://gbraad.nl "Gerard Braad <me@gbraad.nl>") |
|---|
| [@gbraad](https://gbraad.nl/social)  |
