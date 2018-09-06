#!/bin/bash

sudo apt-get -y update
sudo apt-get install linux-headers-$(uname -r) build-essential dkms

sudo apt-get -y install apache2

sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password password'
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password password'
sudo apt-get -y install mysql-server libapache2-mod-auth-mysql php5-mysql

sudo apt-get -y install php5 libapache2-mod-php5 php5-mcrypt

sudo apt-get -y install python

apt-get -y autoremove

echo "MySQL was installed. User is root. Password is password"
