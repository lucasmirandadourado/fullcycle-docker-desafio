FROM golang:latest as builder
WORKDIR /app
RUN apt-get update

COPY ./desafio.go ./app/desafio.go

FROM golang:buster
WORKDIR /app
COPY --from=builder /app .
CMD ["go", "run", "app/desafio.go"]