#!/bin/bash

apt update

apt install -y apache2 mysql-server php libapache2-mod-php php-mysql php-common php-curl php-xmlrpc fail2ban

ufw allow in "Apache"
