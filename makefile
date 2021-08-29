.PHONY: build push

build:
	go build .
	docker build --tag go-quickstart .
	docker run -p 80:80 -it go-quickstart

run:
	go run main.go

push:
	docker tag go-quickstart icr.io/test-go/go-quickstart
	docker push icr.io/test-go/go-quickstart
	ibmcloud cr image list
