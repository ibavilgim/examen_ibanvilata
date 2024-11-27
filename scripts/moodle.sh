cd /var/www
git clone -b MOODLE_405_STABLE git://git.moodle.org/moodle.git
mkdir moodledata
chmod 777 moodledata
chown www-data:www-data moodle
sudo apt install php_curl
sudo apt install php-zts
sudo apt install php-intl
sudo apt install php-soap
sudo apt install php-xmlrp
sudo apt install php-mbstring
sudo apt install php-mysql
sudo apt install php-gd
sudo apt install php-mcrypt
sudo apt install php-memcache
sudo apt install php-memcached

echo "max_input_vars =  5000" >> /etc/php/8.3/cli/php.ini
sudo -u www-data /usr/bin/php /var/www/moodle/admin/cli/install.php
