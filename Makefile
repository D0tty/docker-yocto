all: build

build:
	docker build -t dotty/yocto-build-u20 .

run:
	docker run -it dotty/yocto-build-u20

deploy:
	docker push dotty/yocto-build-u20
