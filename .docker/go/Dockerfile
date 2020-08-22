FROM golang:alpine AS builder

WORKDIR /go/src/app

COPY ./app.go .

RUN go build app.go

FROM scratch

WORKDIR /go/src/app

COPY --from=builder /go/src/app/app .

CMD ["./app"]
