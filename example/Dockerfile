#  deploy-builder
# --------------------------------------------------

FROM golang:1.21.0 as deploy-builder

ENV CGO_ENABLED 0

WORKDIR /workspace

COPY go.mod go.sum ./
RUN go mod download

COPY main.go ./
RUN go build -trimpath -ldflags "-s -w" -o id-generator

#  deploy
# --------------------------------------------------

FROM debian:bookworm-20230320-slim as deploy

RUN apt-get update && rm -rf /var/lib/apt/lists/*

COPY --from=deploy-builder /workspace/id-generator .

CMD [ "./id-generator" ]
