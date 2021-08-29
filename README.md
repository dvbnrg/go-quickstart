# Go Gin Quickstart with IBM Cloud

    - This example assumes the following:
        - Have Go installed: 'brew install go'
        - Have Docker installed: https://docs.docker.com/get-docker/
        - Have IBMCloud CLI installed: https://cloud.ibm.com/docs/cli?topic=cli-getting-started

## To run:

    - Locally: $ go run main.go
    - Docker Multistage Build: 
        - docker build --tag go-quickstart .
        - docker run -p 80:80 -it go-quickstart 
