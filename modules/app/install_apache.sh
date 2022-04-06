#!/bin/bash
sudo su
yum update -y
yum install -y httpd.x86_64
systemctl enable httpd.service
systemctl start httpd.service
echo "Hello APP from $(hostname -f)" > /var/www/html/index.html