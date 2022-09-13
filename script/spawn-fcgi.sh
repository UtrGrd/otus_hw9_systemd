#!/bin/bash

yum install epel-release -y && yum install spawn-fcgi php php-cli mod_fcgid httpd -y
cp /vagrant/source/spawn-fcgi /etc/sysconfig/
cp /vagrant/source/spawn-fcgi.service /etc/sysconfig/
systemctl start spawn-fcgi
systemctl status spawn-fcgi
