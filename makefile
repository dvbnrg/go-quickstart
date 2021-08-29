.PHONY: dockerdev

dockerdev: build run

commit:
	gitui
	git push

build:
	docker build --tag go-quickstart .

run:
	docker run -p 80:80 -it go-quickstart

push: build
	docker tag go-quickstart icr.io/test-go/go-quickstart
	ibmcloud cr login
	docker push icr.io/test-go/go-quickstart

sure:
	docker images
	# go run main.go
	ibmcloud cr image-list

clean:
	docker system prune -af
	