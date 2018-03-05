FROM alpine:3.6

ENV GOPATH /go

RUN apk update && apk add --no-cache --virtual run-dependencies ca-certificates curl && \
    apk add --no-cache --virtual build-dependencies go git musl-dev && \
    go get -u github.com/xenolf/lego && \
    cd ${GOPATH}/src/github.com/xenolf/lego && \
    git checkout bacb545c7a26a247cf36a0c9ec46b2697a65465a && \
    go build -o /usr/bin/lego . && \
    apk del build-dependencies && \
    rm -rf ${GOPATH}

ENTRYPOINT ["/usr/bin/lego"]
