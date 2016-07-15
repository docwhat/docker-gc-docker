FROM alpine
MAINTAINER Christian Höltje <docwhat@gerf.org>

ENV DOCKER_GC_VERSION=1.0.2

RUN apk --no-cache add curl && \
  curl -fL -o /docker-gc "https://github.com/docwhat/docker-gc/releases/download/${DOCKER_GC_VERSION}/docker-gc_linux_amd64" && \
  chmod a+x /docker-gc

ENTRYPOINT ["/docker-gc"]
