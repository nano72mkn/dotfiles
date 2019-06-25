init:
	make docker_install
	make docker_compose_install

docker_install:
	curl https://get.docker.com | sh

docker_compose_install:
	sudo curl -L https://github.com/docker/compose/releases/download/1.24.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
	sudo chmod +x /usr/local/bin/docker-compose
