FROM debian:buster

ARG ROOT_PWD
ARG	USER
ARG USER_PWD

RUN apt-get update -y && apt-get upgrade -y &&\
	apt-get install -y mariadb-server &&\
	sed -i "28s/.*/bind-address = 0.0.0.0/" /etc/mysql/mariadb.conf.d/50-server.cnf

RUN service mysql start && \
	mariadb -e "ALTER USER root@'localhost' IDENTIFIED BY '$ROOT_PWD'; \
	CREATE DATABASE wordpress; \
	CREATE USER '$USER'@'%' IDENTIFIED BY '$USER_PWD'; \
	GRANT ALL PRIVILEGES ON wordpress.* TO '$USER'@'%';"

EXPOSE 3306

CMD ["mysqld"]