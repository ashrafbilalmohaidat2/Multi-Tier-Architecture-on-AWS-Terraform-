#!/bin/bash

sudo dnf update -y

sudo dnf install -y httpd

sudo systemctl start httpd
sudo systemctl enable httpd

echo "<h1>Hello World from Web Tier $(hostname -f)</h1>" | sudo tee /var/www/html/index.html

sudo chown -R apache:apache /var/www/html
sudo chmod -R 755 /var/www/html

echo "Web server setup completed successfully!"
