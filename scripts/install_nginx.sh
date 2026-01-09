#!/bin/bash
apt-get update
apt-get install -y nginx
systemctl start nginx
systemctl enable nginx
echo "<h1>Hello World! Provisioned via Terraform in the United States</h1>" > /var/www/html/index.html