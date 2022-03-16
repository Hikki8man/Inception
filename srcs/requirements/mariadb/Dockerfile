FROM debian:buster

ARG ROOT_PWD
ARG	USER
ARG USER_PWD

RUN apt-get update -y && apt-get upgrade -y &&\
	apt-get install -y mariadb-server

RUN service mysql start && \
	mariadb -e "ALTER USER root@'localhost' IDENTIFIED BY '$ROOT_PWD'; \
	CREATE DATABASE wordpress; \
	CREATE USER '$USER'@'%' IDENTIFIED BY '$USER_PWD'; \
	GRANT ALL PRIVILEGES ON wordpress.* TO '$USER'@'%';"

EXPOSE 3306

CMD ["mysqld", "--bind-address=0.0.0.0"]