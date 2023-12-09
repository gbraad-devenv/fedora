Gerard Braad's Fedora development environment
=============================================

!["Prompt"](https://raw.githubusercontent.com/gbraad/assets/gh-pages/icons/prompt-icon-64.png)


Installation and deployment scripts for my personal development environment.


Usage
-----

### Cloud

  * Open in [Gitpod workspace](https://gitpod.io/#https://github.com/gbraad-devenv/fedora)
  * Open in [GitHub Codespaces](https://github.com/codespaces/new?machine=standardLinux32gb&repo=61788628&ref=main&location=SouthEastAsia&devcontainer_path=.devcontainer%2Fdevcontainer.json)
  * Open in [CodeSandbox](https://codesandbox.io/p/github/gbraad-devenv/fedora)
  * `devenv` => `defenv`, `defsys` in [my dotfiles](https://github.com/gbraad/dotfiles/blob/main/zsh/.zshrc.d/devenv.zsh)
  * Toobox/distrobox using `ghcr.io/gbraad-devenv/fedora/toolbox:39`


### Podman

```bash
$ podman run -it ghcr.io/gbraad-devenv/fedora/dotfiles:39 /bin/zsh 
```

or with [Tailscale](https://tailscale.com) enabled:

```bash
$ podman run -it --cap-add=NET_ADMIN --cap-add=NET_RAW --device=/dev/net/tun ghcr.io/gbraad-devenv/fedora/dotfiles:39 /bin/zsh
```

Note: For more information about the [container](docs/podman.md) build and usage in [my dotfiles](https://github.com/gbraad/dotfiles/blob/main/zsh/.zshrc.d/devenv.zsh)


### Devbox
Running devenv using Toolbox/distrobox

```
$ podman pull ghcr.io/gbraad-devenv/fedora/toolbox:39        # toolbox does not report download progress
```


#### Distrobox
```
$ distrobox create -i ghcr.io/gbraad-devenv/fedora/toolbox:39 -n devbox-fedora39
```


#### Toolbox
```
$ toolbox create -i ghcr.io/gbraad-devenv/fedora/toolbox:39 devbox-fedora39
```

Note: I strongly suggest against the use of Toolbx. (Too many issues when used with custom images)

Authors
-------

| [!["Gerard Braad"](http://gravatar.com/avatar/e466994eea3c2a1672564e45aca844d0.png?s=60)](http://gbraad.nl "Gerard Braad <me@gbraad.nl>") |
|---|
| [@gbraad](https://gbraad.nl/social)  |
