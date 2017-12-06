FROM alpine:latest

RUN \
  apk --no-cache add --virtual .rundeps \
    ca-certificates \
    curl \
    docker \
    git 

ADD bin/container-crontab /

CMD ["/container-crontab"]
