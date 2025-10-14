# Machines


### info
This file helps with managing development environment machines using `machine`.

```sh
run base build
```


### build-base
```sh
machine fedora-devenv remove
machine fedora-devenv from dotfedora-cloud
machine fedora-devenv build base/Machinefile
machine fedora-devenv export fedora-devenv
```
