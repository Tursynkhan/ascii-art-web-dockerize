# #syntax=docker/dockerfile:1
FROM golang:alpine AS builder

WORKDIR /go/src/app

COPY . .

RUN go build -o main ./cmd/web/

FROM alpine

WORKDIR /app

LABEL "author"="https://01.alem.school/git/tursynkhan"
LABEL build_date="2022-10-06"

COPY --from=builder /go/src/app/ /app/

EXPOSE 8080

CMD ["./main"]
