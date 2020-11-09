#!/bin/bash
sh sysctl net.ipv4.ip_forward=1 
apt update -y 
apt-get install apache2 -y 
service apache2 start 
echo '<html>Hello World from vm0</html>' >/var/www/html/index.html 
service apache2 restart
