IMAGE_NAME ?= jrwagz/simple-web-server:latest

.PHONY: build
build:
	docker build -t $(IMAGE_NAME) .

.PHONY: publish
publish:
	docker push $(IMAGE_NAME)