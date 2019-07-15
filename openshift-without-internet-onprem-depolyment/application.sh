#!/bin/bash
ansible-playbook -i hosts /openshift-ansible/application.yml --key-file="ubuntukey.pem"
sleep 10s
ansible-playbook -i hosts /openshift-ansible/network.yml --key-file="ubuntukey.pem"
sleep 10s
#ansible all -i hosts -b -B 1 -P 0 -m shell -a "sleep 5 && reboot" --key-file="ubuntukey.pem"
#sleep 60s 
ansible-playbook -i hosts /openshift-ansible/gitclone.yml --key-file="ubuntukey.pem"
sleep 10s 
ansible all -i hosts -b -B 1 -P 0 -m shell -a "sleep 5 && reboot" --key-file="ubuntukey.pem"
