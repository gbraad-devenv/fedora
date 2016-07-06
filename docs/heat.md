Gerard Braad's development environment
======================================

!["Prompt"](https://raw.githubusercontent.com/gbraad/assets/gh-pages/icons/prompt-icon-64.png)


Heat stack to deploy my personal development environment.


Usage
-----

```
$ yum install -y python-virtualenv
$ virtualenv venv
$ source venv/bin/activate
(venv) $ pip install python-heatclient
(venv) $ heat stack-create devenv_stack -f heat/create-devenv.yml -P "ssh_key_name=gbraad;root_password=secrete"
```

or using the [OpenStack Client container](https://hub.docker.com/r/gbraad/openstack-client/)

```
$ stack [target] heat stack-create devenv_stack -f heat/create-devenv.yml -P "ssh_key_name=gbraad;root_password=secrete"
```
