FROM golang:latest

MAINTAINER Subhrodip Mohanta hello [at] subho [dot] xyz

ENV DEMO_APP_ADDR 8000
ENV DEMO_REDIS_ADDR 6379

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY main.go ./

RUN go build -o main .

EXPOSE 8000

CMD ["./main"]