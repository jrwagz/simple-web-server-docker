IMAGE_NAME ?= jrwagz/simple-web-server:latest

.PHONY: build
build:
	docker build -t $(IMAGE_NAME) .

.PHONY: publish
publish:
	docker buildx create --use
	docker buildx inspect --bootstrap
	docker buildx build \
		--platform linux/amd64,linux/arm64 \
		-t $(IMAGE_NAME) \
		--push .
	docker buildx rm