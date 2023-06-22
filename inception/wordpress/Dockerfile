FROM debian:buster
RUN apt-get update && apt-get install -y wget php7.3 php7.3-fmp php7.3-mysql mariadb-client
RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www
RUN tar -xzf /var/www/wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz
RUN chmod 777 /var/www/wordpress
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
COPY conf/wp_conf.sh . && chmod +x wp_conf.sh
RUN ./wp_conf.sh

ENTRYPOINT ["/usr/sbin/php-fpm7.3","-F"]