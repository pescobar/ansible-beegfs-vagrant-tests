#!/bin/bash

echo "192.168.56.101    mgmtd" >> /etc/hosts
echo "192.168.56.102    oss01" >> /etc/hosts
echo "192.168.56.103    oss02" >> /etc/hosts

sudo sed -i -e 's/SELINUX=permissive/SELINUX=disabled/' /etc/selinux/config
setenforce 0

yum -y install ansible python-virtualenv python-devel

ssh-keygen -f $HOME/.ssh/id_rsa -P ""
