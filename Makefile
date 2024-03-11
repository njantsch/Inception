
up:
	@cd ./srcs && docker-compose up

down:
	@cd ./srcs && docker-compose down

build: down
	@cd ./srcs && docker-compose build

delete:
	@docker system prune --all --force
