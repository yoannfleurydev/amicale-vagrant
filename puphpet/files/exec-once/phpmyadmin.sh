#! /bin/bash

mv /var/www/phpmyadmin/phpmyadmin.conf /etc/nginx/sites-available
ln -s /etc/nginx/sites-available/phpmyadmin.conf /etc/nginx/sites-enabled/phpmyadmin.conf
service nginx restart