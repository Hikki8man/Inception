FROM debian:buster

RUN apt-get update -y &&\
	apt-get upgrade -y &&\
	apt-get install -y php-fpm &&\
	mkdir -p /var/www/html

COPY /wordpress.tar.gz /var/www/html

WORKDIR /var/www/html

RUN tar -xvf wordpress.tar.gz &&\
	rm -rf wordpress.tar.gz

EXPOSE 9000

# CMD service php7.3-fpm start
# CMD [ "service", "php7.3-fpm", "start" ]