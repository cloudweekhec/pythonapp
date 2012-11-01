# -*-shell-script-*-
#install the gtd app

wget http://nibu.ch/script/gtd.tar.gz

tar xzvf gtd.tar.gz


#launch server and the app based on IP and port
IP=$(/sbin/ifconfig eth0|grep inet|awk {'print $2'}|cut -d":" -f2)
gtd/manage.py runserver $IP:4444
