#!/bin/bash

rm -rf /etc/nginx/sites-available/n*
rm -rf /etc/nginx/sites-enabled/n*

rm -rf /var/www/html/.gitkeep /var/www/html/*
git clone https://github.com/yoannfleurydev/amicale-src.git /var/www/html
touch /var/www/html/.gitkeep

cp /var/www/vhosts/amicale.conf /etc/nginx/sites-available/amicale.conf
ln -s /etc/nginx/sites-available/amicale.conf /etc/nginx/sites-enabled/amicale.conf
chown root:root /etc/nginx/sites-available/amicale.conf
sudo chmod 644 /etc/nginx/sites-available/amicale.conf

cd /var/www/html
composer install

cd /


sudo service nginx restart