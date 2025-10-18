#!/bin/bash

# تحديث النظام
sudo dnf update -y

# تثبيت Apache
sudo dnf install -y httpd

# تشغيل Apache عند الإقلاع
sudo systemctl start httpd
sudo systemctl enable httpd

# إنشاء صفحة رئيسية
echo "<h1>Hello World from Web Tier $(hostname -f)</h1>" | sudo tee /var/www/html/index.html

# ضبط صلاحيات Apache
sudo chown -R apache:apache /var/www/html
sudo chmod -R 755 /var/www/html

echo "Web server setup completed successfully!"
