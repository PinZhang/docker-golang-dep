FROM golang:alpine
MAINTAINER martin@englund.nu
RUN apk add --no-cache curl git
RUN curl -fsSL -o /bin/dep https://github.com/golang/dep/releases/download/v0.4.1/dep-linux-amd64 && chmod +x /bin/dep
RUN apk del curl
