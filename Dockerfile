FROM golang:1.19

WORKDIR /app

COPY main.go .

RUN go build main.go

ENTRYPOINT [ "./main" ]