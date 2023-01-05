#!/bin/bash

# Update the package manager cache
apt-get update

# Install Apache
apt-get install apache2 -y

# Install MySQL
apt-get install mysql-server -y

# Install PHP
apt-get install php libapache2-mod-php php-mysql -y

# Enable the Apache mod_headers module
a2enmod headers

# Add the CORS headers to the Apache configuration
echo "Header set Access-Control-Allow-Origin '*'" >> /etc/apache2/apache2.conf
echo "Header set Access-Control-Allow-Methods 'GET, POST, PUT, DELETE, OPTIONS'" >> /etc/apache2/apache2.conf
echo "Header set Access-Control-Allow-Headers 'DNT,User-Agent,X-Requested-With,If-Modified-Since,Cache-Control,Content-Type,Range'" >> /etc/apache2/apache2.conf

# Restart Apache to apply the changes
systemctl restart apache2

# Create the necessary mount points for the Docker image
mkdir -p /var/www/html
mkdir -p /var/lib/mysql
