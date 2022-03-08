FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y &&\
	apt-get install -y mariadb-server &&\
	service mysql start &&\
	mariadb -e "create database wordpress" &&\
	mariadb -e "create user groot" &&\
	mariadb -e "create user jchevet"

EXPOSE 3306

CMD ["mysqld"]