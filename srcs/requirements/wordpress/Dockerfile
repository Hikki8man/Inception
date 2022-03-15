FROM debian:buster

RUN apt-get update -y &&\
	apt-get upgrade -y &&\
	apt-get install -y php-fpm &&\
	apt-get install -y php-mysql &&\
	apt-get install -y curl &&\
	mkdir -p /var/www/html

EXPOSE 9000

RUN sed -i '36s/.*/listen = wordpress:9000/' /etc/php/7.3/fpm/pool.d/www.conf

WORKDIR /var/www/html

COPY wordpress.tar.gz .

RUN tar -xvf wordpress.tar.gz &&\
	rm -rf wordpress.tar.gz

WORKDIR /var/www/html/wordpress

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar &&\
	chmod +x wp-cli.phar &&\
	mv wp-cli.phar /usr/local/bin/wp


COPY wp-config.php .

# RUN service php7.3-fpm start && wp core install --title=zebi --url=https://localhost --admin_user=jchevet --admin_email=johan@42.fr --allow-root

# RUN service php7.3-fpm start && wp user create johan johan@42.fr --user_pass=123456 --role=administrator --allow-root


CMD service php7.3-fpm start && sleep infinity
