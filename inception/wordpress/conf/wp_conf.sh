wp config create --allow-root --dbname=$SQL_DATABASE --dbuser=$SQL_user --dbpass=$SQL_PASSWORD \
    --dbhost=mariadb:3306 --path='var/www/wordpress'