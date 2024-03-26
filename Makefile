
up:
	@cd ./srcs && docker-compose up

down:
	@cd ./srcs && docker-compose down

build: down
	@cd ./srcs && docker-compose build

delete:
	@docker system prune --all --force

vclean:
	@cd /home/njantsch/data && sudo rm -rf ./wordpress/* && sudo rm -rf ./mariadb/* && sudo rm -rf ./website/*

# envs that should be present in the /srcs/.env file:
# DOMAIN_NAME
# CERTS_
# MYSQL_DATABASE
# MYSQL_USER
# MYSQL_PASSWORD
# MYSQL_ROOT_PASSWORD
# WORDPRESS_ADMIN_NAME
# WORDPRESS_ADMIN_PASSWORD
# WORDPRESS_ADMIN_EMAIL
# WORDPRESS_DB_NAME
# WORDPRESS_DB_USER
# WORDPRESS_DB_PASSWORD
# WORDPRESS_DB_HOST
# WORDPRESS_USER
# WORDPRESS_PASSWORD
# WORDPRESS_EMAIL
# FTP_USER
# FTP_PASSWORD
# PORTAINER_PASSWORD
