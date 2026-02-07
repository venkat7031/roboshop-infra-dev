#!/bin/bash

component=$1
env=$2 
dnf install ansible -y
ansible-pull -U https://github.com/venkat7031/ansible-roboshop-roles-tf.git \
  -e component="$component" \
  -e env="$env" \
  main.yaml