FROM    debian:buster
RUN     apt-get update && apt install -y mariadb-server
COPY    50-server.cnf /etc/mysql/mariadb.conf.d/
COPY    tools/ /
EXPOSE  3306
ARG     SQL_DATABASE SQL_USER SQL_PASSWORD SQL_ROOT_PASSWORD
RUN     chmod +x db_conf.sh && /db_conf.sh
RUN     service mysql start && mysql < init.sql
ENTRYPOINT    ["mysqld"]