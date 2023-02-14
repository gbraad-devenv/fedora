Gerard Braad's development environment
======================================

!["Prompt"](https://raw.githubusercontent.com/gbraad/assets/gh-pages/icons/prompt-icon-64.png)


### Build

```
$ podman build -f containers/Containerfile .
# tag image and push
$ podman build -f gitpod/Containerfile .
# tag image and push
$ podman build -f containers/Containerfile-dotfiles .
# tag image and push
```

### GHCR

```
$ export CR_PAT=YOUR_TOKEN
$ echo $CR_PAT | podman login ghcr.io -u $USERNAME --password-stdin
$ podman push ghcr.io/NAMESPACE/IMAGE_NAME:latest
```
