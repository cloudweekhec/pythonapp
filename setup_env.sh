#!/bin/bash

plugin_dir="/plugin/"
app_dir="/Users/nicolasbuchs/Desktop/CloudBeesApp"
control_dir="$plugin_dir/control"
pkg_dir="/Users/nicolasbuchs/Desktop/CloudBeesPkg"
app_port="4444"
log_dir="/Users/nicolasbuchs/Desktop/CloudBeesLog"


#add : check python exit if no install

#if yes ... need check?
#install some tools
sudo su apt-get install python-setuptools

#install mySQL for python
sudo apt-get install python-mysqldb

#install Django
wget "http://pypi.python.org/packages/source/D/Django/Django-1.4.2.tar.gz"
tar xzvf Django-1.4.2.tar.gz
cd Django-1.4.2
sudo python setup.py install

cd ~

wget http://nibu.ch/script/setup_app.sh

bash setup_app.sh