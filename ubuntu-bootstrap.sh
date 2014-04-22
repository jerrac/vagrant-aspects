#!/usr/bin/env bash

echo "192.168.88.2 vm.ubuntu.lab" >> /etc/hosts
echo "192.168.88.3 vm.centos.lab" >> /etc/hosts
echo "192.168.88.4 vm.sles.lab" >> /etc/hosts
echo "192.168.88.5 vm.oracle59.lab" >> /etc/hosts
cat /vagrant/userpubkey.pub >> /home/vagrant/.ssh/authorized_keys
echo "deb mirror://mirrors.ubuntu.com/mirrors.txt precise main restricted universe multiverse" > /vagrant/tmp/newapt
echo "deb mirror://mirrors.ubuntu.com/mirrors.txt precise-updates main restricted universe multiverse" >> /vagrant/tmp/newapt
echo "deb mirror://mirrors.ubuntu.com/mirrors.txt precise-backports main restricted universe multiverse" >> /vagrant/tmp/newapt
echo "deb mirror://mirrors.ubuntu.com/mirrors.txt precise-security main restricted universe multiverse" >>/vagrant/tmp/newapt
cat /etc/apt/sources.list >> /vagrant/tmp/newapt
cp /vagrant/tmp/newapt /etc/apt/sources.list
#apt-get update
#apt-get -y dist-upgrade