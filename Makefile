IMAGE_NAME=ghcr.io/elct9620/docker-finlab

build:
	docker build --platform linux/amd64 -t $(IMAGE_NAME) .
