FROM debian:buster


COPY 50-server.cnf .

RUN apt-get update -y && apt-get upgrade -y &&\
	apt-get install -y mariadb-server &&\
	mv 50-server.cnf /etc/mysql/mariadb.conf.d/ &&\
	service mysql start &&\
	mariadb -e "create database wordpress; ALTER USER 'root'@'localhost' IDENTIFIED BY $DB_ROOT_PWD;"

EXPOSE 3306

CMD ["mysqld"]