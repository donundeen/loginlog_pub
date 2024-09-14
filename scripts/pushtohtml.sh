#!/bin/bash
# push code in local repo to web directory

# individual files
cp  /home/pi/loginlog/var/www/html/index.php /var/www/html/index.php
cp  /home/pi/loginlog/var/www/html/info.php /var/www/html/info.php
cp  /home/pi/loginlog/var/www/html/jokecontrol.php /var/www/html/jokecontrol.php
cp  /home/pi/loginlog/var/www/html/about/index.php /var/www/html/about/index.php
cp  /home/pi/loginlog/var/www/html/features/index.php /var/www/html/features/index.php
cp  /home/pi/loginlog/var/www/html/blog/index.php /var/www/html/blog/index.php
cp  /home/pi/loginlog/var/www/html/changelog/index.php /var/www/html/changelog/index.php
cp  /home/pi/loginlog/var/www/html/changelog/css/styles.css /var/www/html/changelog/css/styles.css
cp  /home/pi/loginlog/var/www/html/css/styles.css /var/www/html/css/styles.css
cp  /home/pi/loginlog/var/www/html/logmin/index.php /var/www/html/logmin/index.php
cp  /home/pi/loginlog/var/www/html/logmin/features/index.php /var/www/html/logmin/features/index.php
cp  /home/pi/loginlog/var/www/html/bibilography/index.php /var/www/html/bibilography/index.php
cp -R /home/pi/loginlog/var/www/html/vendor/ /var/www/html/
