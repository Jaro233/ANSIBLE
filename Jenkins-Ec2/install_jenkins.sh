#!/bin/bash
exec > >(tee -i /var/log/user-data.log)
exec 2>&1
sudo apt update -y
sudo apt install software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update -y
sudo apt install ansible -y
sudo apt install git -y 
mkdir Ansible && cd Ansible
pwd
git clone https://github.com/Jaro233/ANSIBLE.git
cd ANSIBLE
ansible-playbook -i localhost Jenkins-playbook.yml