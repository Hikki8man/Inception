FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y &&\
	apt-get install -y mariadb-server &&\
	service mysql start

EXPOSE 3306

CMD ["mysqld"]