FROM golang:1.19 as builder

WORKDIR /app

COPY main.go .

RUN GOOS=linux GOARCH=amd64 go build -ldflags="-w -s" main.go

FROM scratch

COPY --from=builder /app/main /app/main
ENTRYPOINT [ "./app/main" ]