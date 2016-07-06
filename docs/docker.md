Gerard Braad's development environment
======================================

!["Prompt"](https://raw.githubusercontent.com/gbraad/assets/gh-pages/icons/prompt-icon-64.png)


Docker container image with my personal development environment.


Available as an [automated build](https://hub.docker.com/r/gbraad/devenv/) from the Docker registry.


Usage
-----

```
$ alias devenv='docker run -it --rm -v `pwd`:/workspace gbraad/devenv'
$ cd ~/Projects/[something]
$ devenv 
```
