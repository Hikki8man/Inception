FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y &&\
	apt-get install -y mariadb-server &&\
	service mysql start &&\
	mariadb -e "create database wordpress" &&\
	mariadb -e "create user test@localhost IDENTIFIED BY 'test'" &&\
	mariadb -e "create user jchevet" &&\
	mariadb -e "GRANT ALL privileges ON wordpress.* TO test@localhost IDENTIFIED BY 'test'"

EXPOSE 3306

CMD ["mysqld"]