#!/usr/bin/env bash

echo "192.168.88.2 vm.ubuntu.lab" >> /etc/hosts
echo "192.168.88.3 vm.centos.lab" >> /etc/hosts
echo "192.168.88.4 vm.sles.lab" >> /etc/hosts
echo "192.168.88.5 vm.oracle59.lab" >> /etc/hosts
echo "192.168.88.6 vm.trustyubuntu.lab" >> /etc/hosts
cat /vagrant/userpubkey.pub >> /home/vagrant/.ssh/authorized_keys