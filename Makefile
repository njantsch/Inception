
up:
	@cd ./srcs && docker-compose up

down:
	@cd ./srcs && docker-compose down

build: down
	@cd ./srcs && docker-compose build

delete:
	@docker system prune --all --force

vclean:
	@cd /home/njantsch/data && sudo rm -rf ./wordpress/* && sudo rm -rf ./mariadb/*

