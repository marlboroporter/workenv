BOOST_V_DOT := 1.81.0
BOOST_V_UNDERSCORE := $(shell echo "${BOOST_V_DOT}" | tr . _)


all: build 
	@echo "Build CPP Dev Env Docker"  

check:
	 @if ! [ -f resources/boost_${BOOST_V_UNDERSCORE}.tar.gz ]; then echo "missing boost download"; exit; fi

resources:
	mkdir -p resources

build: resources download check
	docker build --platform linux/amd64 \
	--build-arg BOOST_V=${BOOST_V_UNDERSCORE} \
	-t cpp-docker-env:2 \
	-f cpp_docker_file  .

run:
	docker run -it --rm --name=cppenv \
	--mount type=bind,source=${PWD},target=/src \
	cpp-docker-env:2 \
	bash

download: 
	@echo "If download does not work, download to resources/ manually"
	@echo ${BOOST_V_DOT}
	@echo ${BOOST_V_UNDERSCORE} 
	@if ! [ -f resources/boost_${BOOST_V_UNDERSCORE}.tar.gz ]; \
	then \
	(cd resources;  wget --no-check-certificate --quiet \
	https://boostorg.jfrog.io/artifactory/main/release/${BOOST_V_DOT}/source/boost_${BOOST_V_UNDERSCORE}.tar.gz) \
	fi 

clean:
	rm -rf resources/*



