#!/bin/bash

dnf install python3.13-pip -y
pip3.11 install ansible
ansible-pull -i localhost, -U https://github.com/ckolli66/roboshop-ansible-roles-v1.git main.yml -e component=${component} -e env=${env}