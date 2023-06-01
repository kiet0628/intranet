#!/bin/bash

echo ".....Configure IpTables Firewall: "

sudo yum install iptables-services -y
sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 3000
sudo iptables -t nat -A PREROUTING -p tcp --dport 443 -j REDIRECT --to-port 3443

sudo service iptables restart

echo ".....End Configure IpTables Firewall: "
