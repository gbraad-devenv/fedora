Gerard Braad's development environment
======================================

!["Prompt"](https://raw.githubusercontent.com/gbraad/assets/gh-pages/icons/prompt-icon-64.png)


Docker container image with my personal development environment.

Contains:
  * Personal [dotfiles](https://github.com/gbraad/dotfiles)
    * vim
    * tmux
    * ...
  * ansible
  * and more to come...

Available as an [automated build](https://hub.docker.com/r/gbraad/devenv/) from the Docker registry.


Usage
-----

```
$ alias devenv='docker run -it --rm -v `pwd`:/workspace gbraad/devenv'
$ cd ~/Projects/[something]
$ devenv 
```


Authors
-------

| [!["Gerard Braad"](http://gravatar.com/avatar/e466994eea3c2a1672564e45aca844d0.png?s=60)](http://gbraad.nl "Gerard Braad <me@gbraad.nl>") |
|---|
| [@gbraad](https://twitter.com/gbraad)  |
