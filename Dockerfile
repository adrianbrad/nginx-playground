FROM golang:buster as builder

WORKDIR /log-server

COPY ./main.go ./main.go

RUN go build -o log-server

ENTRYPOINT [ "./log-server" ]