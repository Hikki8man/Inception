all:
	mkdir -p /home/jchevet/data/db_data
	mkdir -p /home/jchevet/data/wp_data
	docker-compose -f srcs/docker-compose.yml up -d

build:
	docker-compose -f srcs/docker-compose.yml build

up:
	docker-compose -f srcs/docker-compose.yml up -d

down:
	docker-compose -f srcs/docker-compose.yml down

fclean:
	rm -rf /home/jchevet/data/db_data
	rm -rf /home/jchevet/data/wp_data
	docker image rm -f nginx:42 wordpress:42 mariadb:42
	docker-compose -f srcs/docker-compose.yml down -v

re: fclean all

.PHONY: re fclean down up build all