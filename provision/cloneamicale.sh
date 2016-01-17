#!/usr/bin/env bash

rm -rf /var/www/html/*
rm -rf /var/www/html/.git
git clone https://github.com/yoannfleurydev/amicale-src.git /var/www/html/
touch /var/www/html/.gitkeep
rm -rf /var/www/amicale