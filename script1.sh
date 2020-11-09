#!/bin/bash
dpkg --configure -a
apt-get -y update
apt-get install apache2 -y 
service apache2 start 
echo '<html>Hello World from vm1</html>' >/var/www/html/index.html 
service apache2 restart
