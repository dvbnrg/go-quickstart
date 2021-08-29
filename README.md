# Go Gin Quickstart with IBM Cloud

    - This example assumes the following:
        - You have Go installed: 'brew install go'
        - You have Docker installed: https://docs.docker.com/get-docker/
        - You have IBMCloud CLI installed: https://cloud.ibm.com/docs/cli?topic=cli-getting-started

## Important Commands:

    - Run Locally without Docker: 
        - go run main.go
    - Docker Multistage Build: 
        - docker build --tag <my_repository> .
        - docker run -p 80:80 -it <my_repository> 
    - Push to registry:
        - Log into ibmcloud container registry: 
            - ibmcloud cr login
        - Tag image:
            - docker tag <my_repository> icr.io/<my_namespace>/<my_repository>:<my_tag>
        - Push to Registry:
            - docker push icr.io/<my_namespace>/<my_repository>:<my_tag>
        - Verify Images were pushed to Registry:
            - ibmcloud cr image-list

## Citations:

    - https://docs.docker.com/language/golang/build-images/#multi-stage-builds
    - https://golang.org/doc/tutorial/web-service-gin
    - https://docs.docker.com/get-docker/
    - https://cloud.ibm.com/docs/cli?topic=cli-getting-started
    - https://github.com/IBM-Cloud/get-started-go
