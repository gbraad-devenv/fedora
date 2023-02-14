Gerard Braad's development environment
======================================

!["Prompt"](https://raw.githubusercontent.com/gbraad/assets/gh-pages/icons/prompt-icon-64.png)


Installation and deployment scripts for my personal development environment.

Contains:
  * Personal [dotfiles](https://github.com/gbraad/dotfiles)
    * vim
    * tmux
    * ...
  * container defintion
  * and more to come...


Usage
-----

  * Docker/Podman [container](docs/podman.md)

```bash
$ podman run -it ghcr.io/gbraad/devenv/dotfiles:37 /bin/zsh 
```

  * Open in [Gitpod workspace](https://gitpod.io/#https://github.com/gbraad/devenv)
  * Open in [GitHub Codespaces](https://github.com/codespaces/new?machine=standardLinux32gb&repo=61788628&ref=main&location=SouthEastAsia&devcontainer_path=.devcontainer%2Fdevcontainer.json)


Authors
-------

| [!["Gerard Braad"](http://gravatar.com/avatar/e466994eea3c2a1672564e45aca844d0.png?s=60)](http://gbraad.nl "Gerard Braad <me@gbraad.nl>") |
|---|
| [@gbraad](https://gbraad.nl/social)  |
