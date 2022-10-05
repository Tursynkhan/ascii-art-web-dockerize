#syntax=docker/dockerfile:1

FROM golang:latest

WORKDIR /app

COPY . .

RUN go build ./cmd/web/

EXPOSE 8080

CMD ["./web"]