FROM golang:alpine
MAINTAINER martin@englund.nu
RUN apk add --no-cache curl git
RUN curl -fsSL -o /bin/dep https://github.com/golang/dep/releases/download/v0.4.1/dep-linux-amd64 && chmod +x /bin/dep
RUN go get github.com/astaxie/beego
RUN go get github.com/beego/bee
RUN go get github.com/go-sql-driver/mysql
RUN apk del curl
