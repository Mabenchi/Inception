#!bin/sh

wp core install --url=localhost --title=Inception --admin_user=username --admin_password=password --admin_email=a@email.com
wp theme install astra --activate --allow-root
wp user create salam salam@salam.salam --role=author --user_pass=userpass --allow-root
wp plugin install redis-cache
wp plugin activate redis-cache
wp redis enable
/usr/sbin/php-fpm8 -F