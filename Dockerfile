#syntax=docker/dockerfile:1

# FROM golang:alpine AS builder
FROM golang:latest
LABEL "author"="https://01.alem.school/git/tursynkhan"
LABEL build_date="2022-10-06"

# WORKDIR /go/src/app
WORKDIR /app

COPY . .

RUN go build -o main ./cmd/web/

# FROM alpine
# WORKDIR /app
# COPY --from=builder /go/src/app/ /app/

EXPOSE 8080

CMD ["/app/main"]