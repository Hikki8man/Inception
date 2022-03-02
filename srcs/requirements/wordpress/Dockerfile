FROM debian:buster

RUN apt-get update -y &&\
	apt-get upgrade -y &&\
	apt-get install -y php-fpm &&\
	apt-get install -y vim &&\
	apt-get install -y zsh

COPY /wordpress.tar.gz .

EXPOSE 80

