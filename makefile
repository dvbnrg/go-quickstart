.PHONY: dockerdev

dockerdev: build run test

commit:
	gitui
	git push

build:
	docker build --tag go-quickstart .

run:
	docker run -d -p 80:80 -it go-quickstart

test:
	curl localhost/ping

push: build
	docker tag go-quickstart justdave/go-quickstart:latest
	docker push justdave/go-quickstart:latest
	docker tag go-quickstart icr.io/test-go/go-quickstart
	ibmcloud cr login
	docker push icr.io/test-go/go-quickstart

sure:
	docker images
	ibmcloud cr image-list
	go run main.go

clean:
	docker system prune -af
	