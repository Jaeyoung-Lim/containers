rosversion?=melodic
registry?=ethzasl
version?=latest

build:
	docker build . --tag ${registry}/ros-${rosversion}:latest

push:
	docker push ${registry}/ros-${rosversion}:latest

publish: build push

run:
	docker run --rm -it --entrypoint /bin/bash ${registry}/ros-${rosversion}:latest
