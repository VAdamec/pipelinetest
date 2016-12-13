#!/usr/bin/env bash

cd /tmp
yum -y install wget
wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
rpm -i epel-release-latest-6.noarch.rpm

# system update
# yum -y update

# simple provision, run apache
yum install httpd -y
chkconfig httpd on

gem install serverspec --no-ri --no-rdoc

