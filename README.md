# ansible

### Ansible is a CM Tool.

This repository contains all the basics and the project automation using `ansible`

What is a playbook ?

```
A Playbook is a list plays.
``` 

What is a play ?

```
A play is a list of taks ?
```

What is a task ?

```
A task can be anything that you wish to perform
```

A Playbook can be written using YAML and all the playbooks should end with `.yml` or `.yaml` 

PS : YAML is intendation specific. 

How to know the list of all the facts ?

```
ansible all -i hosts -m setup
```

When to use Push & Pull  ?
---> In your infra is pretty static prefer push and if your infra is dynamic, use pull.

# Ansible-Pull Usage

ansible-pull -U https://github.com/b51-clouddevops/ansible.git -e ansible_user=centos -e ansible_password=xxxxxx -e COMPONENT=mongodb roboshop-pull.yml

# This a comment added by Manoj Verma to show the PR Review Procedure.