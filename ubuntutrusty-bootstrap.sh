#!/usr/bin/env bash

echo "192.168.88.2 vm.ubuntu.lab" >> /etc/hosts
echo "192.168.88.3 vm.centos.lab" >> /etc/hosts
echo "192.168.88.4 vm.sles.lab" >> /etc/hosts
echo "192.168.88.5 vm.oracle59.lab" >> /etc/hosts
echo "192.168.88.6 vm.trustyubuntu.lab" >> /etc/hosts
cat /vagrant/userpubkey.pub >> /home/vagrant/.ssh/authorized_keys
echo "deb mirror://mirrors.ubuntu.com/mirrors.txt trusty main restricted universe multiverse" > /vagrant/tmp/newapt
echo "deb mirror://mirrors.ubuntu.com/mirrors.txt trusty-updates main restricted universe multiverse" >> /vagrant/tmp/newapt
echo "deb mirror://mirrors.ubuntu.com/mirrors.txt trusty-backports main restricted universe multiverse" >> /vagrant/tmp/newapt
echo "deb mirror://mirrors.ubuntu.com/mirrors.txt trusty-security main restricted universe multiverse" >>/vagrant/tmp/newapt
cat /etc/apt/sources.list >> /vagrant/tmp/newapt
cp /vagrant/tmp/newapt /etc/apt/sources.list
#trying to install packages on a clean install doesn't work without running this first.
apt-get update
#apt-get -y dist-upgrade