cd /var/www/html/wordpress

wp core download --allow-root

wp config create --allow-root --dbname=$SQL_DATABASE --dbuser=$SQL_USER \
    --dbpass=$SQL_PASSWORD --dbhost=$SQL_HOST

wp core install --allow-root --url=$WP_URL --title=inception --admin_user=$WP_USER --admin_password=$WP_PW --admin_email=$WP_MAIL

