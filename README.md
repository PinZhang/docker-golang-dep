# Docker image for building Go with dep

This image is an extension of the regular
[golang:alpine](https://hub.docker.com/_/golang/)
docker image but with
[dep](https://golang.github.io/dep/)
and
[git](https://git-scm.com),
so that it can build a go program using `Gopkg.toml`.

## Sample Dockerfile

    # build stage
    FROM golang-dep AS build-env
    ENV G=/go/src/github.com/pmenglund/foo
    COPY . $G

    RUN cd $G && dep ensure -vendor-only && go build -o /tmp/foo

    # final stage
    FROM alpine
    COPY --from=build-env /tmp/foo /
    ENTRYPOINT ["/foo"]
