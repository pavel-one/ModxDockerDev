#!make

build:
	docker-compose up --build -d
	@make status
up:
	docker-compose up -d
	@make status
status:
	docker-compose ps
down:
	docker-compose down
exec:
	docker-compose exec app zsh
exec.nginx:
	docker-compose exec nginx /bin/sh
exec.db:
	docker-compose exec db bash
log:
	docker-compose logs -f app
exec.root:
	docker-compose exec -u root app bash