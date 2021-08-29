# syntax=docker/dockerfile:1
# Build
FROM golang:latest AS build
WORKDIR /app
COPY . /app/
RUN go mod download
RUN go build -o app

# Deploy
FROM gcr.io/distroless/base-debian10 AS deploy
WORKDIR /
COPY --from=build /app .
EXPOSE 80
ENTRYPOINT ["./app"]

