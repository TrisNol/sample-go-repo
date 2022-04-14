# syntax=docker/dockerfile:1

FROM golang:1.17-alpine

WORKDIR /app

COPY *.go ./
COPY go.mod ./
COPY go.sum ./

RUN go mod download

RUN go build -o /sample-go-repo

EXPOSE 8080

CMD [ "/sample-go-repo" ]