ARG BUILD_FROM
FROM golang:1.24-alpine AS builder

WORKDIR /build
COPY go.mod .
COPY main.go .
COPY server/ server/
RUN CGO_ENABLED=0 go build -ldflags="-s -w" -o socks5-proxy .

FROM ${BUILD_FROM}

COPY --from=builder /build/socks5-proxy /usr/local/bin/socks5-proxy

COPY rootfs /
