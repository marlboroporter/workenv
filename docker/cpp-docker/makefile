# systemctl start docker
#
# makefile
# jieli, 2022-12-30 17:00
#
# cf	https://ddanilov.me/dockerized-cpp-build

all: build 
	@echo "Build CPP Dev Env Docker"  

build:
	docker build -t cpp-docker-env:2 -f cpp_docker_file .

run:
	docker run -it --rm --name=cppenv \
	--mount type=bind,source=${PWD},target=/src \
	cpp-docker-env:2 \
	bash
