FROM debian:buster

RUN apt-get update -y &&\
	apt-get install -y openssl &&\
 	apt-get install -y nginx

EXPOSE 443

CMD [ "nginx", "-g", "daemon off;" ]
