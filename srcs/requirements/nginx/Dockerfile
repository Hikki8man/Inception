FROM debian:buster

RUN apt-get update -y && \
 	apt-get install -y nginx

EXPOSE 80

CMD ["service", "nginx", "start"]
