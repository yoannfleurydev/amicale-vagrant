#! /bin/bash

mv /var/www/phpmyadmin/phpmyadmin.conf /etc/nginx/sites-available
ln -s /etc/nginx/sites-available/phpmyadmin.conf /etc/nginx/sites-enabled/phpmyadmin.conf
chown root:root /etc/nginx/sites-available/phpmyadmin.conf

wget https://github.com/phpmyadmin/phpmyadmin/archive/RELEASE_4_5_4_1.zip
mkdir /var/www/
unzip RELEASE_4_5_4_1.zip -d /var/www/
mv /var/www/phpmyadmin-RELEASE_4_5_4_1 /var/www/phpmyadmin

service nginx restart