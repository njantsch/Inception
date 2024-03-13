
up:
	@cd ./srcs && docker-compose up

down:
	@cd ./srcs && docker-compose down

build: down
	@cd ./srcs && docker-compose build

delete:
	@docker system prune --all --force

# Access docker container via bash
# docker exec -it mariadb bash
