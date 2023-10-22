wp config create --dbname=wordpress --dbuser="$MYSQL_USER" \
	--dbpass="$MYSQL_PASSWORD" --dbhost=mariadb --force

wp core is-installed || wp core install --url=aquesada.42.fr --title="AlexandraAwesomeSite" --admin_user="$WP_ADMIN" \
	--admin_password="$WP_ADMIN_PASSWORD" --admin_email="$WP_ADMIN"@mail.org --skip-email

wp user create "$WP_USER" "$WP_USER"@mail.org --user_pass="$WP_USER_PASSWORD"

wp theme install inspiro --activate

#redis config
wp plugin install redis-cache --activate
wp config set WP_REDIS_HOST "redis"
wp redis enable

exec php-fpm81 -F
