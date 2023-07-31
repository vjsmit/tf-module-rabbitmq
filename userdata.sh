#!/bin/bash

set-hostname -skip-apply ${component}
labauto ansible
ansible-pull -i localhost, -U https://github.com/vjsmit/roboshop-ansible main.yml -e role_name=rabbitmq -e env=${env} &>>/opt/ansible.log