PHP = php-symfony-app
ENCORE = encore-symfony-app
SYMFONY_BIN = docker exec -it $(PHP) php bin/console
DOCKER_ENCORE = docker-compose up $(ENCORE)


#docker

#start docker
start: ; docker-compose up -d
#stop docker
down: ; docker-compose down


#symfony

#make migration
migration: ; $(SYMFONY_BIN) make:migration

#migrate
migrate: ; $(SYMFONY_BIN) doctrine:migrations:migrate

#make controller
controller: ; $(SYMFONY_BIN) make:controller

#make fixtures
make-fixtures: ; $(SYMFONY_BIN) make:fixtures

#load fixtures
load-fixtures: ; $(SYMFONY_BIN) doctrine:fixtures:load


# Encore

encore: ; $(DOCKER_ENCORE)

encore-build: ; $(DOCKER_ENCORE) --build
