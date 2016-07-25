Gerard Braad's development environment
======================================

!["Prompt"](https://raw.githubusercontent.com/gbraad/assets/gh-pages/icons/prompt-icon-64.png)


Docker container image with my personal development environment.


## Registries

### Docker hub

Available as an automated build from the [Docker registry](https://hub.docker.com/r/gbraad/devenv/).

  * Fedora 24: `docker pull gbraad/devenv:f24`
  * CentOS 7: `docker pull gbraad/devenv:c7`


### GitLab

Alternative automated builds are available at a GitLab [container registry](https://gitlab.com/gbraad/devenv/container_registry).

  * Fedora 24: `docker pull registry.gitlab.com/gbraad/devenv:f24`
  * CentOS 7: `docker pull registry.gitlab.com/gbraad/devenv:c7`


Usage
-----

### Setup an alias

```
$ alias devenv='docker run -it --rm -v `pwd`:/workspace gbraad/devenv:f24'
```

or

```
$ alias devenv='docker run -it --rm -v `pwd`:/workspace registry.gitlab.com/gbraad/devenv:f24'
```


### Invoke devenv

```
$ cd ~/Projects/[something]
$ devenv 
```

Note: this will `chown` the `pwd` you have to use GID/UID 1000.
