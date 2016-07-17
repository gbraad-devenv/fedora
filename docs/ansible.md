Gerard Braad's development environment
======================================

!["Prompt"](https://raw.githubusercontent.com/gbraad/assets/gh-pages/icons/prompt-icon-64.png)


Ansible playbook to create my personal development environment on an OpenStack cloud provider.


Usage
-----
Make sure you have [shade](https://github.com/openstack-infra/shade) installed.
```
$ pip install shade
```

The variable `cloud` will refer to the configured cloud configuration in your `clouds.yaml`.

```
$ ansible-playbook create-devenv-openstack.yml \
  --extra-vars cloud=dreamhost \
  --extra-vars key=my_key
```
