.PHONY: build push

build:
	docker build --tag go-quickstart .

run:
	docker run -p 80:80 -it go-quickstart

push:
	docker tag go-quickstart icr.io/test-go/go-quickstart
	docker push icr.io/test-go/go-quickstart

sure:
	go build .
	# go run main.go
	ibmcloud cr image-list
