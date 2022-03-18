#!/bin/bash

if [ ! -f "wp-config.php" ]; then
wp config create --dbname=$WORDPRESS_DB_NAME \
				--dbuser=$WORDPRESS_DB_USER \
				--dbpass=$WORDPRESS_DB_PASS \
				--dbhost=$WORDPRESS_DB_HOST \
				--skip-check --allow-root

wp core install --title="LE TITRE" \
				--url=$WORDPRESS_URL \
				--admin_user=$WORDPRESS_ADMIN \
				--admin_password=$WORDPRESS_ADMIN_PASSWORD \
				--admin_email=$WORDPRESS_ADMIN_EMAIL \
				--allow-root

wp user create $WORDPRESS_USER $WORDPRESS_USER_EMAIL \
				--user_pass=$WORDPRESS_USER_PWD \
				--allow-root
fi
php-fpm7.3 -F -R