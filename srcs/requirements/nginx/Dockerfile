FROM debian:buster

RUN mkdir -p /etc/nginx/ssl &&\
	apt-get update -y &&\
	apt-get install -y openssl &&\
	apt-get install -y vim &&\
 	apt-get install -y nginx

WORKDIR /etc/nginx

COPY default .

RUN mv default sites-available/ &&\
	openssl genrsa -out ssl/privkey.pem 2048 &&\
	openssl req -new -x509 -key ssl/privkey.pem -out ssl/ca.crt -subj '/CN=42O=42 LTD./C=US'

EXPOSE 443

CMD [ "nginx", "-g", "daemon off;" ]
