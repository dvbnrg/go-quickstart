.PHONY: build push

build:
	# go build .
	docker build --tag go-quickstart .

run:
	# go run main.go
	docker run -p 80:80 -it go-quickstart

push:
	docker tag go-quickstart icr.io/test-go/go-quickstart
	docker push icr.io/test-go/go-quickstart
	ibmcloud cr image list
