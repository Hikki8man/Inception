FROM debian:buster

RUN apt-get update -y &&\
	apt-get upgrade -y &&\
	apt-get install -y php-fpm &&\
	apt-get install -y php-mysql &&\
	mkdir -p /var/www/html

COPY www.conf .

RUN mv www.conf /etc/php/7.3/fpm/pool.d/

WORKDIR /var/www/html

COPY wordpress.tar.gz .

RUN tar -xvf wordpress.tar.gz &&\
	rm -rf wordpress.tar.gz

WORKDIR /var/www/html/wordpress

COPY wp-config.php .

EXPOSE 9000

CMD service php7.3-fpm start && sleep infinity
