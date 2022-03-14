all:
	mkdir -p srcs/dbdata
	mkdir -p srcs/wordpressdata
	docker-compose -f srcs/docker-compose.yaml up -d

build:
	docker-compose -f srcs/docker-compose.yaml build

up:
	docker-compose -f srcs/docker-compose.yaml up -d

down:
	docker-compose -f srcs/docker-compose.yaml down

fclean:
	rm -rf srcs/dbdata
	rm -rf srcs/wordpressdata
	docker image rm -f nginx:42 wordpress:42 mariadb:42
	docker-compose -f srcs/docker-compose.yaml down -v

re: fclean all

.PHONY: re fclean down up build all