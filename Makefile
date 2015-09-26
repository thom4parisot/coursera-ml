CONTAINER_NAME := oncletom/coursera-ml

build:
	docker build -t $(CONTAINER_NAME) .

start:
	docker run -ti --rm -p 0.0.0.0:8888:8888 -v $(CURDIR):/app $(CONTAINER_NAME)

.PHONY: start build
