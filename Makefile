# Makefile for Docker

build:
	docker-compose build

start:
	docker-compose up -d

stop:
	docker-compose down -v

logs:
	docker-compose logs -f

api:
	 docker-compose exec api /bin/bash

deploy:
	docker-compose run api sh "deploy.sh"