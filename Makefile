
up:
	@cd ./srcs && docker-compose up

down:
	@cd ./srcs && docker-compose down

build: down delete
	@cd ./srcs && docker-compose build

delete:
	@docker rmi srcs_nginx
