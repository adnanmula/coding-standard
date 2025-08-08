UID=$(shell id -u)
GID=$(shell id -g)
DOCKER_PHP_SERVICE=php

up:
		docker compose up -d

down:
		docker compose down -v

build:
		docker compose build && \
		docker compose pull

install:
		docker compose run --rm -u ${UID}:${GID} ${DOCKER_PHP_SERVICE} composer install

update:
		docker compose run --rm -u ${UID}:${GID} ${DOCKER_PHP_SERVICE} composer update

bash:
		docker compose run --rm -u ${UID}:${GID} ${DOCKER_PHP_SERVICE} sh
