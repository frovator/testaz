#!/bin/bash
sysctl net.ipv4.ip_forward=1 
echo "1">/proc/sys/net/ipv4/ip_forward
dpkg --configure -a
apt-get update -y 
apt-get install apache2 -y 
service apache2 start 
echo '<html>Hello World from vm0</html>' >/var/www/html/index.html 
service apache2 restart
