#!/bin/bash -e
yum install -y mysql55-devel perl mysql55-server php56-mysqlnd php56-mbstring php56-gd php56-opcache

#start mysql
service mysqld start
chkconfig mysqld on

#set root password for mysql
/usr/libexec/mysql55/mysqladmin -u root password 'admin@123'

