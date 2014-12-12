chown -R root:root /var/www/html/
chmod -R 755 /var/www/html/
chown www-data:www-data /var/www/html/config/config.php
chmod 750 /var/www/html/config/config.php
chown -R www-data:www-data /var/www/html/data/
chmod -R 750 /var/www/html/data
chown root:root /var/www/html/data/.htaccess
chmod 755 /var/www/html/data/.htaccess
chown www-data:www-data /var/www/html/apps/
chmod 750 /var/www/html/apps/
